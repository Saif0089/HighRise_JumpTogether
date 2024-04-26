--!AddComponentMenu("")

-- Vector3
type Vector3 =
{
    x: number,
    y: number,
    z: number,
    normalized: Vector3,
    magnitude: number,
    sqrMagnitude: number,
    Set: (_newX: number, _newY: number, _newZ: number) -> void,
    Scale: (_scale: Vector3) -> void,
    Normalize: () -> void,

}

-- Vector3Type
type Vector3Type =
{
    Slerp: (_a: Vector3, _b: Vector3, _t: number) -> Vector3,
    SlerpUnclamped: (_a: Vector3, _b: Vector3, _t: number) -> Vector3,
    RotateTowards: (_current: Vector3, _target: Vector3, _maxRadiansDelta: number, _maxMagnitudeDelta: number) -> Vector3,
    Lerp: (_a: Vector3, _b: Vector3, _t: number) -> Vector3,
    LerpUnclamped: (_a: Vector3, _b: Vector3, _t: number) -> Vector3,
    MoveTowards: (_current: Vector3, _target: Vector3, _maxDistanceDelta: number) -> Vector3,
    Scale: (_a: Vector3, _b: Vector3) -> Vector3,
    Cross: (_lhs: Vector3, _rhs: Vector3) -> Vector3,
    Reflect: (_inDirection: Vector3, _inNormal: Vector3) -> Vector3,
    Normalize: (_value: Vector3) -> Vector3,
    Dot: (_lhs: Vector3, _rhs: Vector3) -> number,
    Project: (_vector: Vector3, _onNormal: Vector3) -> Vector3,
    ProjectOnPlane: (_vector: Vector3, _planeNormal: Vector3) -> Vector3,
    Angle: (_from: Vector3, _to: Vector3) -> number,
    SignedAngle: (_from: Vector3, _to: Vector3, _axis: Vector3) -> number,
    Distance: (_a: Vector3, _b: Vector3) -> number,
    ClampMagnitude: (_vector: Vector3, _maxLength: number) -> Vector3,
    Magnitude: (_vector: Vector3) -> number,
    SqrMagnitude: (_vector: Vector3) -> number,
    Min: (_lhs: Vector3, _rhs: Vector3) -> Vector3,
    Max: (_lhs: Vector3, _rhs: Vector3) -> Vector3,
    new: (_x: number, _y: number, _z: number) -> Vector3,

}

if not _G.Vector3 then
	local Vector3Type_instance : Vector3Type = { }
	_G.Vector3 = Vector3Type_instance;
end
