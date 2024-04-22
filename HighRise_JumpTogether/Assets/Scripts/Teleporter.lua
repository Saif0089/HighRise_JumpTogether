-- --!SerializeField
-- local position: Vector3 = Vector3.new(0, 0, 0)
-- local OnCollidedRequest = Event.new("OnCollidedRequest")
-- local OnCollidedResponse = Event.new("OnCollidedResponse")

-- function self:ClientAwake()

--     function self:OnTriggerEnter(collider:Collider)
--         local playerCharacter = collider.gameObject:GetComponent(Character)
--         if playerCharacter ~= nil then
--             OnCollidedRequest:FireServer()
--             print("Event Fired")
--         end
--     end
--     OnCollidedResponse:Connect(function() print("Response Received From Server") end)
-- end

-- function self:ServerAwake()
--     OnCollidedRequest:Connect(function(player) 
--         print("Server Firing Event")
--         OnCollidedResponse:FireAllClient()
--      end)
-- end

local myRequest = Event.new("MyRequest")
local myEvent = Event.new("MyEvent")

function self:ClientAwake()
    local myVar = "Hello World"
    myRequest:FireServer(myVar) 
    print("Client Firing Request")

    
end
function self:ClientUpdate()
    myEvent:Connect(function(arg) 
        print(arg) -- Prints "Hello World"
        print("Server response received")
    end)
end
function self:ServerUpdate()
    myRequest:Connect(function(player, arg) 
        myEvent:FireAllClients(arg)
        print("Server Firing Response")
    end)
end

