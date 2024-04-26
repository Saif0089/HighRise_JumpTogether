--!SerializeField
local position: Vector3 = nil
local OnCollidedRequest = Event.new("OnCollidedRequest")
local OnCollidedResponse = Event.new("OnCollidedResponse")
--!SerializeField
local move_camera: boolean = false
--!SerializeField
local camera: GameObject = nil

function self:ClientAwake() 
    print("Client Awake called Teleporter")
    
    function self:OnTriggerEnter(collider:Collider)
        print("Triggered")
        
        OnCollidedRequest:FireServer(position)
        print("Event Fired")
       
    end
    OnCollidedResponse:Connect(function(player, position)  print("Response Received From Server  " .. tostring(player.name)) MoveCamera(position)  print(player.character:Teleport(position)) end)
   
end



function self:ServerAwake()
    print("Server Awake called Teleporter")
    OnCollidedRequest:Connect(function(player,position) 
        print("Server Firing Event")
       
        player.character.transform.position = position
        OnCollidedResponse:FireAllClients(player, position)
     end)
end

function MoveCamera(_position)
    if move_camera then
        print("Move camera attempted")
        local cameraScript = camera:GetComponent("RTSCamera")
        cameraScript.CenterOn(_position)
    end
end

