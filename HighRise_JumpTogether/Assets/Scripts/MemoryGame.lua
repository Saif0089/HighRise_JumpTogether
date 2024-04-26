
--!SerializeField
local TimerCooldownCurrent: number = 0
--!SerializeField
local TimerCoolDownTotal: number = 0
--!SerializeField
local startTimer: boolean = false

local random: string = ""

function self:Start()
    for i = 6,1,-1 
    do 
        random = random .. tostring(math.random(0,2))
    end
    key = random
    print(random)
end


function self:ServerUpdate()
    if(startTimer == false) then
        TimerCooldownCurrent = TimerCooldownCurrent - Time.deltaTime
     
        if(TimerCooldownCurrent <= 0) then
            startTimer = true
        
           
            TimerCooldownCurrent = TimerCoolDownTotal
            TimerCooldownCurrent = 5
            TimerCoolDownTotal = 5
            startTimer = false
        end
    end
end