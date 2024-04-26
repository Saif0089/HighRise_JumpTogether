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

function self:Start()

    -- Load scene 0
    local scene1 = server.LoadSceneAdditive(0)
	local scene2 = scene1 -- server.LoadSceneAdditive(0)

	local nextScene = scene1

    -- Any player connecting will be put in scene 0
    server.PlayerConnected:Connect(function(player)
        server.MovePlayerToScene(player, nextScene)

		if nextScene == scene1 then
			nextScene = scene2
		else
			nextScene = scene1
		end
    end) 

end
