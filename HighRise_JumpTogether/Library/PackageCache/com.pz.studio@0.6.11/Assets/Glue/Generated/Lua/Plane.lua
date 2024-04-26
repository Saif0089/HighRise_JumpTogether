--!AddComponentMenu("")

-- Plane
type Plane =
{
    normal: Vector3,
    distance: number,
    flipped: Plane,
    Raycast: (_ray: Ray) -> (boolean, number),
    SetNormalAndPosition: (_inNormal: Vector3, _inPoint: Vector3) -> void,
    Set3Points: (_a: Vector3, _b: Vector3, _c: Vector3) -> void,
    Flip: () -> void,
    Translate: (_translation: Vector3) -> void,
    ClosestPointOnPlane: (_point: Vector3) -> Vector3,
    GetDistanceToPoint: (_point: Vector3) -> number,
    GetSide: (_point: Vector3) -> boolean,
    SameSide: (_inPt0: Vector3, _inPt1: Vector3) -> boolean,

}

-- PlaneType
type PlaneType =
{
    Translate: (_plane: Plane, _translation: Vector3) -> Plane,
    new: (_normal: Vector3, _point: Vector3) -> Plane,

}

if not _G.Plane then
	local PlaneType_instance : PlaneType = { }
	_G.Plane = PlaneType_instance;
end
