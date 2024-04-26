
--!SerializeField
local ray_distance: number = 0
--!SerializeField
local wall_mask: LayerMask = nil
--!SerializeField
local character_mask: LayerMask = nil

function self:OnTriggerEnter(collider:Collider)
    if true then
        print("Player detected")
        local direction: Vector3 = (collider.transform.position - self.transform.parent).normalized
        local ray:Ray = Ray.new(self.transform.parent, direction)
        raycast_hit = Physics.Raycast(ray, ray_distance, wall_mask.value)
        if raycast_hit then
            if not(Vector3.Distance(self.transform.parent, raycast_hit.transform.position)  < Vector3.Distance(self.transform.parent, collider.transform.position)) then
                print("Player is nearer than the wall")
            else
                print("Wall is nearer than the player")
            end
        end

    end
end
