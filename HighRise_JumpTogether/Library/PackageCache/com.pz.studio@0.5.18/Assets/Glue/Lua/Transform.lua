--!AddComponentMenu("")

-- Transform
type Transform =
{
    position: Vector3,
    localPosition: Vector3,
    eulerAngles: Vector3,
    localEulerAngles: Vector3,
    right: Vector3,
    up: Vector3,
    forward: Vector3,
    rotation: Quaternion,
    localRotation: Quaternion,
    localScale: Vector3,
    parent: Transform,
    worldToLocalMatrix: Matrix4x4,
    localToWorldMatrix: Matrix4x4,
    root: Transform,
    childCount: number,
    lossyScale: Vector3,
    hasChanged: boolean,
    hierarchyCapacity: number,
    hierarchyCount: number,
    LookAt: (_targetPos: Vector3) -> void,
    TweenPositionTo: (_to: Vector3) -> Tween,
    TweenLocalPositionTo: (_to: Vector3) -> Tween,
    TweenPosition: (_from: Vector3, _to: Vector3) -> Tween,
    TweenLocalPosition: (_from: Vector3, _to: Vector3) -> Tween,
    SetParent: (_p: Transform) -> void,
    SetPositionAndRotation: (_position: Vector3, _rotation: Quaternion) -> void,
    SetLocalPositionAndRotation: (_localPosition: Vector3, _localRotation: Quaternion) -> void,
    RotateAround: (_point: Vector3, _axis: Vector3, _angle: number) -> void,
    TransformDirection: (_direction: Vector3) -> Vector3,
    InverseTransformDirection: (_direction: Vector3) -> Vector3,
    TransformVector: (_vector: Vector3) -> Vector3,
    InverseTransformVector: (_vector: Vector3) -> Vector3,
    TransformPoint: (_position: Vector3) -> Vector3,
    InverseTransformPoint: (_position: Vector3) -> Vector3,
    DetachChildren: () -> void,
    SetAsFirstSibling: () -> void,
    SetAsLastSibling: () -> void,
    SetSiblingIndex: (_index: number) -> void,
    GetSiblingIndex: () -> number,
    Find: (_n: string) -> Transform,
    IsChildOf: (_parent: Transform) -> boolean,
    GetChild: (_index: number) -> Transform,

}

-- TransformType
type TransformType =
{

}

if not _G.Transform then
	local TransformType_instance : TransformType = { }
	_G.Transform = TransformType_instance;
end
