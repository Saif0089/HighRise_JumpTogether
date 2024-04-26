--!AddComponentMenu("")

-- Physics
type Physics =
{

}

-- PhysicsType
type PhysicsType =
{
    IgnoreCollision: (_collider1: Collider, _collider2: Collider, _ignore: boolean) -> void,
    IgnoreLayerCollision: (_layer1: number, _layer2: number, _ignore: boolean) -> void,
    GetIgnoreLayerCollision: (_layer1: number, _layer2: number) -> boolean,
    GetIgnoreCollision: (_collider1: Collider, _collider2: Collider) -> boolean,
    Simulate: (_step: number) -> void,
    SyncTransforms: () -> void,
    ClosestPoint: (_point: Vector3, _collider: Collider, _position: Vector3, _rotation: Quaternion) -> Vector3,
    RebuildBroadphaseRegions: (_worldBounds: Bounds, _subdivisions: number) -> void,
    Raycast: (_ray: Ray, _maxDistance: number, _layerMask: number) -> (boolean, RaycastHit),
    OverlapSphere: (_ray: Vector3, _maxDistance: number, _layerMask: number) -> table,

}

if not _G.Physics then
	local PhysicsType_instance : PhysicsType = { }
	_G.Physics = PhysicsType_instance;
end
