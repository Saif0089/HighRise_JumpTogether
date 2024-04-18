--!SerializeField
local stand_height: number = 0
--!SerializeField
local colliding_object: GameObject = nil
local on_button: boolean = false


function self:OnTriggerEnter(collider: Collider)
    colliding_object = collider.gameObject
    on_button = true
    local platform = GameObject.FindGameObjectWithTag("Platform")
    if platform ~= nil then
        --[[if platform is inactive on compile time uncomment line 14]]
        platform:SetActive(true)
        --[[if platform is active on compile time uncomment line 16]]
        --platform:SetActive(false)

    else
        print("Platform not found")
    end
    print("Button Triggered")
end

function self:OnTriggerExit(collider:Collider)
    on_button = false
    print("Button Exited")
end



