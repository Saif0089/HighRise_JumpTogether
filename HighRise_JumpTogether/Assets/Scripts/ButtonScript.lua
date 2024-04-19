--!SerializeField
local transparentObject: GameObject = nil
--!SerializeField
local opaqueObject: GameObject = nil

--!SerializeField
local disableOnExit: boolean = false

function self:OnTriggerEnter(collider: Collider)
   EnableObject(true)
end

function self:OnTriggerExit(collider:Collider)
    if disableOnExit then
        EnableObject(false)
    end
end

function EnableObject(enable: boolean)
    transparentObject:SetActive(not enable)
    opaqueObject:SetActive(enable)
end



