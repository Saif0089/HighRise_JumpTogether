--!AddComponentMenu("")

-- CapsuleCollider
type CapsuleCollider =
{
    center: Vector3,
    radius: number,
    height: number,
    direction: number,

}

-- CapsuleColliderType
type CapsuleColliderType =
{

}

if not _G.CapsuleCollider then
	local CapsuleColliderType_instance : CapsuleColliderType = { }
	_G.CapsuleCollider = CapsuleColliderType_instance;
end
