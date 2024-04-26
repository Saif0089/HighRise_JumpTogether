--[[
	
	Copyright (c) 2024 Pocket Worlds

	This software is provided 'as-is', without any express or implied
	warranty.  In no event will the authors be held liable for any damages
	arising from the use of this software.

	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:

	1. The origin of this software must not be misrepresented; you must not
	claim that you wrote the original software. If you use this software
	in a product, an acknowledgment in the product documentation would be
	appreciated but is not required.
	2. Altered source versions must be plainly marked as such, and must not be
	misrepresented as being the original software.
	3. This notice may not be removed or altered from any source distribution.
	
--]] 

local general = nil

function AllowVoice()
	if client then
		print ("GeneralChat.AllowVoice must be called on the server, not client.")
		return false
	end
	
	if general then
		if #general.players > 0 then
			return false
		end
		if general.allowsVoice then
			return true
		end

		Chat:DestroyChannel(general)
	end

	general = Chat:CreateChannel("General", true, true, 0)
	return true
end

function self:ServerStart()
	--Create the Default Channel (name, allowsText, allowsVoice)
	if not general then
		general = Chat:CreateChannel("General", true, false, 0)
	end

	--Always add new players to general
	server.PlayerConnected:Connect(function(player)
		Chat:AddPlayerToChannel(general, player)
	end)
end
