--!SerializeField
local Sequence1: GameObject = nil
--!SerializeField
local Sequence1Text: GameObject = nil
--!SerializeField
local Sequence2: GameObject = nil
--!SerializeField
local Sequence2Text: GameObject = nil



function self:ClientAwake()
    Timer.Every(20, function() ChangePath() end)
end

function ChangePath()

    local random = math.random(0,1)
    if random == 0 then
        Sequence1:SetActive(true)
        Sequence1Text:SetActive(true)
        Sequence2:SetActive(false)
        Sequence2Text:SetActive(false)
    else
        Sequence1:SetActive(false)
        Sequence1Text:SetActive(false)
        Sequence2:SetActive(true)
        Sequence2Text:SetActive(true)
    end
end