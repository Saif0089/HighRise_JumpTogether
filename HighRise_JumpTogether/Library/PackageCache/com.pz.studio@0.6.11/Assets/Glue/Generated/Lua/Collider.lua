--!AddComponentMenu("")

-- Collider
type Collider =
{
    enabled: boolean,
    attachedRigidbody: Rigidbody,
    isTrigger: boolean,
    contactOffset: number,
    bounds: Bounds,
    hasModifiableContacts: boolean,
    providesContacts: boolean,
    layerOverridePriority: number,
    excludeLayers: LayerMask,
    includeLayers: LayerMask,
    ClosestPoint: (_position: Vector3) -> Vector3,
    ClosestPointOnBounds: (_position: Vector3) -> Vector3,

}

-- ColliderType
type ColliderType =
{

}

if not _G.Collider then
	local ColliderType_instance : ColliderType = { }
	_G.Collider = ColliderType_instance;
end
