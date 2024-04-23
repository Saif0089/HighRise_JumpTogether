--!SerializeField
local position: Vector3 = Vector3.new(0, 0, 0)
local OnCollidedRequest = Event.new("OnCollidedRequest")
local OnCollidedResponse = Event.new("OnCollidedResponse")

function self:ClientAwake() 
    print("Client Awake called Teleporter")

    function self:OnTriggerEnter(collider:Collider)
        print("Triggered")
        OnCollidedRequest:FireServer(position)
        print("Event Fired")
       
    end
    OnCollidedResponse:Connect(function(player, position)  print("Response Received From Server")  print(player.character:Teleport(position)) end)
   
end



function self:ServerAwake()
    print("Server Awake called Teleporter")
    OnCollidedRequest:Connect(function(player,position) 
        print("Server Firing Event")
        player.character.transform.position = position
        OnCollidedResponse:FireAllClients(player, position)
     end)
end

