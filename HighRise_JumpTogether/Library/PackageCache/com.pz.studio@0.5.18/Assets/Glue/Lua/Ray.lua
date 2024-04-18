--!AddComponentMenu("")

-- Ray
type Ray =
{
    origin: Vector3,
    direction: Vector3,
    GetPoint: (_distance: number) -> Vector3,

}

-- RayType
type RayType =
{
    new: (_origin: Vector3, _direction: Vector3) -> Ray,

}

if not _G.Ray then
	local RayType_instance : RayType = { }
	_G.Ray = RayType_instance;
end
