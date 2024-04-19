
--!SerializeField
local position: Vector3 = Vector3.new(0,0,0)
local deathCollider: boolean = false
function self:OnTriggerEnter(collider: Collider)
    
   if true then 
        if(collider.gameObject:GetComponent(Character) == nil) then
            print("Collider doesn't have character component")
        else
            print("Player Entered Trigger")
            collider.gameObject:GetComponent(Character):Teleport(position, function() print("Teleported") end)
            if deathCollider then
            end
        end
    else
        print("destination nil") 
    end
    
end

function Teleport(collider:Collider)
    
end
