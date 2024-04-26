--!AddComponentMenu("")

-- Quaternion
type Quaternion =
{
    x: number,
    y: number,
    z: number,
    w: number,
    eulerAngles: Vector3,
    normalized: Quaternion,
    Set: (_newX: number, _newY: number, _newZ: number, _newW: number) -> void,
    SetLookRotation: (_view: Vector3) -> void,
    SetFromToRotation: (_fromDirection: Vector3, _toDirection: Vector3) -> void,
    Normalize: () -> void,

}

-- QuaternionType
type QuaternionType =
{
    FromToRotation: (_fromDirection: Vector3, _toDirection: Vector3) -> Quaternion,
    Inverse: (_rotation: Quaternion) -> Quaternion,
    Slerp: (_a: Quaternion, _b: Quaternion, _t: number) -> Quaternion,
    SlerpUnclamped: (_a: Quaternion, _b: Quaternion, _t: number) -> Quaternion,
    Lerp: (_a: Quaternion, _b: Quaternion, _t: number) -> Quaternion,
    LerpUnclamped: (_a: Quaternion, _b: Quaternion, _t: number) -> Quaternion,
    AngleAxis: (_angle: number, _axis: Vector3) -> Quaternion,
    LookRotation: (_forward: Vector3, _upwards: Vector3) -> Quaternion,
    Dot: (_a: Quaternion, _b: Quaternion) -> number,
    Angle: (_a: Quaternion, _b: Quaternion) -> number,
    Euler: (_x: number, _y: number, _z: number) -> Quaternion,
    RotateTowards: (_from: Quaternion, _to: Quaternion, _maxDegreesDelta: number) -> Quaternion,
    Normalize: (_q: Quaternion) -> Quaternion,
    new: (_x: number, _y: number, _z: number, _w: number) -> Quaternion,

}

if not _G.Quaternion then
	local QuaternionType_instance : QuaternionType = { }
	_G.Quaternion = QuaternionType_instance;
end
