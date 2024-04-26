--!AddComponentMenu("")

-- Bounds
type Bounds =
{
    center: Vector3,
    size: Vector3,
    extents: Vector3,
    min: Vector3,
    max: Vector3,
    SetMinMax: (_min: Vector3, _max: Vector3) -> void,
    Encapsulate: (_point: Vector3) -> void,
    Expand: (_amount: number) -> void,
    Intersects: (_bounds: Bounds) -> boolean,
    IntersectRay: (_ray: Ray) -> boolean,
    Contains: (_point: Vector3) -> boolean,
    SqrDistance: (_point: Vector3) -> number,
    ClosestPoint: (_point: Vector3) -> Vector3,

}

-- BoundsType
type BoundsType =
{
    new: (_center: Vector3, _size: Vector3) -> Bounds,

}

if not _G.Bounds then
	local BoundsType_instance : BoundsType = { }
	_G.Bounds = BoundsType_instance;
end
