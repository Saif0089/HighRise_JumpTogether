--!SerializeField
local RespawnPoint : Transform = nil

--!SerializeField
local Moving : boolean = false
--!SerializeField
local Duration : number = 2
--!SerializeField
local pointB : Transform = nil

local triggerRequest = Event.new("TriggerRequest")
local triggerEvent = Event.new("TriggerEvent")

function self:ClientAwake()

    function self:OnTriggerEnter(other : Collider)
        local playerCharacter = other.gameObject:GetComponent(Character)
        if(playerCharacter == nil)then return end
    
        local player = playerCharacter.player
        if(client.localPlayer == player)then
            triggerRequest:FireServer(RespawnPoint.position)
        end
    end

    triggerEvent:Connect(function(player)
        player.character:Teleport(RespawnPoint.position)
    end)

    if(Moving)then
        local from = self.transform.position;
        local to = from;
        to.x = pointB.position.x
        to.y = pointB.position.y
        to.z = pointB.position.z
    
        self.transform:TweenPosition(from, to)
            :Duration(Duration)
            :PingPong()
            :Loop()
            :EaseInOutCubic()
            :Play();
    end
end

function self:ServerAwake()
    triggerRequest:Connect(function(player, position)
        player.character.transform.position = position
        triggerEvent:FireAllClients(player)
    end)
end