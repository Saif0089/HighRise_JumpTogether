--!AddComponentMenu("")

-- Rigidbody
type Rigidbody =
{
    velocity: Vector3,
    angularVelocity: Vector3,
    drag: number,
    angularDrag: number,
    mass: number,
    useGravity: boolean,
    maxDepenetrationVelocity: number,
    isKinematic: boolean,
    freezeRotation: boolean,
    automaticCenterOfMass: boolean,
    centerOfMass: Vector3,
    worldCenterOfMass: Vector3,
    automaticInertiaTensor: boolean,
    inertiaTensorRotation: Quaternion,
    inertiaTensor: Vector3,
    detectCollisions: boolean,
    position: Vector3,
    rotation: Quaternion,
    solverIterations: number,
    sleepThreshold: number,
    maxAngularVelocity: number,
    maxLinearVelocity: number,
    solverVelocityIterations: number,
    excludeLayers: LayerMask,
    includeLayers: LayerMask,
    AddExplosionForce: (_explosionForce: number, _explosionPosition: Vector3, _explosionRadius: number) -> void,
    AddForceAtPosition: (_force: Vector3, _position: Vector3) -> void,
    AddRelativeForce: (_force: Vector3) -> void,
    AddForce: (_force: Vector3) -> void,
    SweepTest: (_direction: Vector3, _maxDistance: number) -> (boolean, RaycastHit),
    SetDensity: (_density: number) -> void,
    MovePosition: (_position: Vector3) -> void,
    MoveRotation: (_rot: Quaternion) -> void,
    Move: (_position: Vector3, _rotation: Quaternion) -> void,
    Sleep: () -> void,
    IsSleeping: () -> boolean,
    WakeUp: () -> void,
    ResetCenterOfMass: () -> void,
    ResetInertiaTensor: () -> void,
    GetRelativePointVelocity: (_relativePoint: Vector3) -> Vector3,
    GetPointVelocity: (_worldPoint: Vector3) -> Vector3,
    GetAccumulatedForce: (_step: number) -> Vector3,
    GetAccumulatedTorque: (_step: number) -> Vector3,
    ClosestPointOnBounds: (_position: Vector3) -> Vector3,

}

-- RigidbodyType
type RigidbodyType =
{

}

if not _G.Rigidbody then
	local RigidbodyType_instance : RigidbodyType = { }
	_G.Rigidbody = RigidbodyType_instance;
end
