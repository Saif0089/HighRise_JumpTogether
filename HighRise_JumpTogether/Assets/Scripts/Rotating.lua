--!SerializeField
local angle: number = 0

function self:Update()
    self.transform:RotateAround(self.transform.position, self.transform.right, angle)
end