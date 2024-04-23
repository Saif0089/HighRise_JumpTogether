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
local AlarmCooldownCurrent: number = 0
--!SerializeField
local AlarmCoolDownTotal: number = 0
local state_1 = "Blue"
--!SerializeField
local canAlarm: boolean = false


local CollisionResponse = Event.new("CollisionResponse")

function self:ServerStart()
  

    

end

function self:ServerUpdate()
 
    if(canAlarm == false)then
        AlarmCooldownCurrent = AlarmCooldownCurrent - Time.deltaTime
        --print(tostring(AlarmCooldownCurrent))
        if(AlarmCooldownCurrent <= 0)then
            canAlarm = true
            SwitchTiles()
            print("Timer Worked")
            CollisionResponse:FireAllClients()
            AlarmCooldownCurrent = AlarmCoolDownTotal
            AlarmCooldownCurrent = 3
            AlarmCoolDownTotal = 3
            canAlarm = false
        end
    end

end

function self:ClientAwake()
    print("Client Awake is being called")
    CollisionResponse:Connect(function()  SwitchTiles() print("Server Reponse Received")end)
end

function SwitchTiles() 
    if state_1 == "Blue" then

        if(blue_tiles == nil) then
            print("Blue Tile Nil")
        end

        blue_tiles.transform.position = position_2
        red_tiles.transform.position = position_1

        state = "Red"
    else
        blue_tiles.transform.position = position_1
        red_tiles.transform.position = position_2

        state = "Blue"
    end

end