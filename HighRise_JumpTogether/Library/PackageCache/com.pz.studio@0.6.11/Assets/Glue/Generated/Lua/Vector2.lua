--!AddComponentMenu("")

-- Vector2
type Vector2 =
{
    x: number,
    y: number,
    normalized: Vector2,
    magnitude: number,
    sqrMagnitude: number,
    Set: (_newX: number, _newY: number) -> void,
    Scale: (_scale: Vector2) -> void,
    Normalize: () -> void,
    SqrMagnitude: () -> number,

}

-- Vector2Type
type Vector2Type =
{
    Lerp: (_a: Vector2, _b: Vector2, _t: number) -> Vector2,
    LerpUnclamped: (_a: Vector2, _b: Vector2, _t: number) -> Vector2,
    MoveTowards: (_current: Vector2, _target: Vector2, _maxDistanceDelta: number) -> Vector2,
    Scale: (_a: Vector2, _b: Vector2) -> Vector2,
    Reflect: (_inDirection: Vector2, _inNormal: Vector2) -> Vector2,
    Perpendicular: (_inDirection: Vector2) -> Vector2,
    Dot: (_lhs: Vector2, _rhs: Vector2) -> number,
    Angle: (_from: Vector2, _to: Vector2) -> number,
    SignedAngle: (_from: Vector2, _to: Vector2) -> number,
    Distance: (_a: Vector2, _b: Vector2) -> number,
    ClampMagnitude: (_vector: Vector2, _maxLength: number) -> Vector2,
    SqrMagnitude: (_a: Vector2) -> number,
    Min: (_lhs: Vector2, _rhs: Vector2) -> Vector2,
    Max: (_lhs: Vector2, _rhs: Vector2) -> Vector2,
    new: (_x: number, _y: number) -> Vector2,

}

if not _G.Vector2 then
	local Vector2Type_instance : Vector2Type = { }
	_G.Vector2 = Vector2Type_instance;
end
