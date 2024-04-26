--!AddComponentMenu("")

-- MeshCollider
type MeshCollider =
{
    sharedMesh: Mesh,
    convex: boolean,

}

-- MeshColliderType
type MeshColliderType =
{

}

if not _G.MeshCollider then
	local MeshColliderType_instance : MeshColliderType = { }
	_G.MeshCollider = MeshColliderType_instance;
end
