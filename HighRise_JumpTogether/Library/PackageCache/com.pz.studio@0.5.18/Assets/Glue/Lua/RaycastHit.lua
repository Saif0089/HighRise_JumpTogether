--!AddComponentMenu("")

-- RaycastHit
type RaycastHit =
{
    collider: Collider,
    colliderInstanceID: number,
    point: Vector3,
    normal: Vector3,
    barycentricCoordinate: Vector3,
    distance: number,
    triangleIndex: number,
    textureCoord: Vector2,
    textureCoord2: Vector2,
    transform: Transform,
    rigidbody: Rigidbody,
    lightmapCoord: Vector2,

}

-- RaycastHitType
type RaycastHitType =
{

}

if not _G.RaycastHit then
	local RaycastHitType_instance : RaycastHitType = { }
	_G.RaycastHit = RaycastHitType_instance;
end
