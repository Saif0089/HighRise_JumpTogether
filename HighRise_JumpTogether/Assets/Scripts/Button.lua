--!SerializeField
local TransparentObject: GameObject = nil
--!SerializeField
local OpaqueObject: GameObject = nil

--!SerializeField
local reset_time: number = 0

--!SerializeField
local TimerCooldownCurrent: number = 0
--!SerializeField
local TimerCoolDownTotal: number = 0
--!SerializeField
local startTimer: boolean = false

local is_on: boolean = false

local collision_request = Event.new("CollisionRequest")
local collision_response = Event.new("CollisionResponse")

local collision_exit_request = Event.new("CollisionExitRequest")
local collision_exit_response = Event.new("CollisionExitResponse")




function EnableObject(is_active: boolean)
    if is_active then 
        TransparentObject:SetActive(false)
        OpaqueObject:SetActive(true)
    else
        TransparentObject:SetActive(true)
        OpaqueObject:SetActive(false)
    end
    print("Enable Object called with  ".. tostring(is_active))
end
function self:ClientAwake()
    collision_response:Connect(function() EnableObject(true)end)
    collision_exit_response:Connect(function() EnableObject(false) print("Client received the exit response")end)

      
end

if client then

    function self:OnTriggerEnter(collider: Collider)
        print("character entered the button")
        collision_request:FireServer()
    end
    function self:OnTriggerExit(collider: Collider)
        print("Character exited the trigger")
        collision_exit_request:FireServer()
    end
end


function self:ServerAwake()
    collision_request:Connect(function(player) collision_response:FireAllClients() is_on = true print("Server Received Request") end)
    collision_exit_request:Connect(function(player) --[[[Disable on server here]] collision_exit_response:FireAllClients() is_on = false print("Server Received Exit Request") end)
end


