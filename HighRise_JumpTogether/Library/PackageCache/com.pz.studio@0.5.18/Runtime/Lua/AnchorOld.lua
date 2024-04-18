--[[
	
	Copyright (c) 2024 Pocket Worlds

	This software is provided 'as-is', without any express or implied
	warranty.  In no event will the authors be held liable for any damages
	arising from the use of this software.

	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely.
	
--]] 

type Anchor = 
{    
}

--!SerializeField
local animation : string = "sit"

--!SerializeField
local characterTransform : Transform = nil

local requestOccupancy = RemoteFunction.new("RequestOccupancy");
local releaseOccupancy = Event.new("ReleaseOccupancy");
local occupant = IntValue.new("occupant", 0);
local occupantCharacter : Character? = nil;

if not characterTransform then
	characterTransform = self.gameObject.transform
end

--- Returns true if the anchor is currently occupied by a character
-- @return true if occupied by a character, false if not
function IsOccupied()
	return occupantCharacter ~= nil
end

--- Get the character that currently occupies the anchor
-- @return Character that occupies the anchor or nil
function GetOccupant()
	return occupantCharacter;
end

--- Asynchronously request the the anchor for the given character.
-- If the anchor is occupied or cannot be occupied at this time a value of false
-- will immediately returned.  If a request has been issued then the callback will
-- be called with when an answer the request is available.
-- @param character The character requesting to occupy the anchor
-- @param response The callback that is called when the request has been made an answer answer is availble.
function RequestOccupancy(character : Character, response : (success : boolean) -> ())
    if IsOccupied() or not self.enabled or not character then
        return false
    end

	-- On the server we just need to set the occupant 
	if server then
		SetOccupant(character)

		if response then
			response(true)
		end

	-- On the client we need to send a request to the server for the occupancy
	else
		if character == nil then
			error("client cannot clear the occupancy of an anchor")
			return false
		end

		if character.player == nil or not character.player.isLocal then
			error("client can only request occupancy of an anchor for the local player's character")
			return false;
		end

		requestOccupancy:InvokeServer(response);
	end

	return true
end

--- Release a previous requested occupancy of an anchor (Client)
-- @param character Character to release 
function ReleaseOccupancy(character : Character)
	if server then 
		error("ReleaseOccupancy should be called on the client")
		return;
	end

	if not character or not character.player or not character.player.isLocal then
		error("ReleaseOccupancy can only be called with the character of the local player");
		return;
	end

	if GetOccupant() ~= character then 
		return
	end

	releaseOccupancy:FireServer()
end

--- Set the owner of the anchor to the given character
-- @param character The character to set as the occupant of the anchor
function SetOccupant(character: Character)
	if not server then
		error("SetOccupant can only be called on the server")
		return false
	end

	if character == nil then
		error("character must be non nil and an a networked character to attach to an anchor")
		return false
	end

	-- Ensure the character is networked
	local networkId = character.networkId
	if networkId == 0 then
		error("only networked characters can occupy an anchor")
		return false
	end

	-- set the occupant to the new 
	occupant.value = networkId
	occupantCharacter = character;

	return true
end

local function UpdateOccupantTransform()
	if not occupantCharacter then
		self.LateUpdate = nil
		return
	end

	occupantCharacter.gameObject.transform.position = characterTransform.position;
end

function EnableTransformUpdate()
	if not occupantCharacter then
		return;
	end

	self.LateUpdate = UpdateOccupantTransform
end

--- Evict the current occupant of the anchor (Server)
function EvictOccupant()
	if not server then
		error("EvictOccupant can only be called on the server")
		return
	end

	occupant.value = 0
	occupantCharacter = nil;
end

if server then
	-- Make sure that if the current occupant of the anchor is destroyed that we 
	-- evict them and allow someone else to use the anchor
	game.NetworkObjectDestroyed:Connect(function(object : any)
		if object == occupantCharacter then
			EvictOccupant()
		end
	end)

	-- Handle the request for occupancy from a client
	function requestOccupancy.OnInvokeServer (player : Player)
		-- if the player or the player's character is missing we just silently return
		-- false because it is possible the character was removed or the player disconnected
		if player == nil or player.character == nil then
			return false
		end

		-- if the anchor is already occuped then the request failed
        if IsOccupied() then            
            return false
        end

		return SetOccupant(player.character)
    end

	releaseOccupancy:Connect(function(player)
		if occupantCharacter == nil or occupantCharacter.player ~= player then
			return
		end

		EvictOccupant()
	end)

else 
	-- Monitor the occupant of an anchor changing on the client so we can
	-- store the character object of the current occupant
	occupant.Changed:Connect(function(newValue)		
		occupantCharacter = game.GetNetworkObject(newValue)		

		if occupantCharacter == nil then
			self.LateUpdate = nil
		end
	end)
end	