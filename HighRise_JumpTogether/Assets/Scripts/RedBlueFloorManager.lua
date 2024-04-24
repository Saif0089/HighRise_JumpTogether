--!SerializeField
local blue_tiles: GameObject = nil
--!SerializeField
local red_tiles: GameObject = nil
--!SerializeField
local position_1: Vector3 = Vector3.new(0,0,0)
--!SerializeField
local position_2: Vector3 = Vector3.new(0,0,0)

local change_tile = Event.new("ChangeTile")

local lastChangeTime = 0
--!SerializeField
local TimerCooldownCurrent: number = 0
--!SerializeField
local TimerCoolDownTotal: number = 0
local state_1 = "Blue"
--!SerializeField
local startTimer: boolean = false


local CollisionResponse = Event.new("CollisionResponse")


function self:ServerUpdate()
 
    if(startTimer == false)then
        TimerCooldownCurrent = TimerCooldownCurrent - Time.deltaTime
        --print(tostring(AlarmCooldownCurrent))
        if(TimerCooldownCurrent <= 0)then
            startTimer = true
            SwitchTiles("Server")
            print("Timer Worked")
            CollisionResponse:FireAllClients()
            TimerCooldownCurrent = TimerCoolDownTotal
            TimerCooldownCurrent = 3
            TimerCoolDownTotal = 3
            startTimer = false
        end
    end

end

function self:ClientAwake()
    print("Client Awake is being called")
    CollisionResponse:Connect(function()  SwitchTiles("Client") print("Server Reponse Received")end)
end

function SwitchTiles(origin) 
    if state_1 == "Blue" then

        if(blue_tiles == nil or red_tiles == nil) then
            print(origin.." - Blue or Red Tile Nil")
        else
        blue_tiles.transform.position = position_2
        red_tiles.transform.position = position_1
        state = "Red"
        end
    else
        if (blue_tiles == nil or red_tiles == nil) then
            print(origin.." - Blue or Red Tile Nil")
        else
            blue_tiles.transform.position = position_1
            red_tiles.transform.position = position_2
            state = "Blue"
        end
    end

end