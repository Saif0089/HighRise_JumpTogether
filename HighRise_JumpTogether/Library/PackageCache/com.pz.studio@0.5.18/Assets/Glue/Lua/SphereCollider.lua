--!AddComponentMenu("")

-- SphereCollider
type SphereCollider =
{
    center: Vector3,
    radius: number,

}

-- SphereColliderType
type SphereColliderType =
{

}

if not _G.SphereCollider then
	local SphereColliderType_instance : SphereColliderType = { }
	_G.SphereCollider = SphereColliderType_instance;
end
