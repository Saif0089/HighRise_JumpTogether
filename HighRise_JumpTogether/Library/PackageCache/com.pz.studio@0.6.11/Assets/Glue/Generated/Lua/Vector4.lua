--!AddComponentMenu("")

-- Vector4
type Vector4 =
{
    x: number,
    y: number,
    z: number,
    w: number,
    normalized: Vector4,
    magnitude: number,
    sqrMagnitude: number,
    Set: (_newX: number, _newY: number, _newZ: number, _newW: number) -> void,
    Scale: (_scale: Vector4) -> void,
    Normalize: () -> void,
    SqrMagnitude: () -> number,

}

-- Vector4Type
type Vector4Type =
{
    Lerp: (_a: Vector4, _b: Vector4, _t: number) -> Vector4,
    LerpUnclamped: (_a: Vector4, _b: Vector4, _t: number) -> Vector4,
    MoveTowards: (_current: Vector4, _target: Vector4, _maxDistanceDelta: number) -> Vector4,
    Scale: (_a: Vector4, _b: Vector4) -> Vector4,
    Normalize: (_a: Vector4) -> Vector4,
    Dot: (_a: Vector4, _b: Vector4) -> number,
    Project: (_a: Vector4, _b: Vector4) -> Vector4,
    Distance: (_a: Vector4, _b: Vector4) -> number,
    Magnitude: (_a: Vector4) -> number,
    Min: (_lhs: Vector4, _rhs: Vector4) -> Vector4,
    Max: (_lhs: Vector4, _rhs: Vector4) -> Vector4,
    SqrMagnitude: (_a: Vector4) -> number,
    new: (_x: number, _y: number, _z: number, _w: number) -> Vector4,

}

if not _G.Vector4 then
	local Vector4Type_instance : Vector4Type = { }
	_G.Vector4 = Vector4Type_instance;
end
