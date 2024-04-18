--!AddComponentMenu("")

-- Collision
type Collision =
{
    impulse: Vector3,
    relativeVelocity: Vector3,
    rigidbody: Rigidbody,
    body: Component,
    collider: Collider,
    transform: Transform,
    gameObject: GameObject,
    contactCount: number,

}

-- CollisionType
type CollisionType =
{

}

if not _G.Collision then
	local CollisionType_instance : CollisionType = { }
	_G.Collision = CollisionType_instance;
end
