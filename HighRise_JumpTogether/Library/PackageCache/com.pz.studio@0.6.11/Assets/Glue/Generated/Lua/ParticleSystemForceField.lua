--!AddComponentMenu("")

-- ParticleSystemForceField
type ParticleSystemForceField =
{
    startRange: number,
    endRange: number,
    length: number,
    gravityFocus: number,
    rotationRandomness: Vector2,
    multiplyDragByParticleSize: boolean,
    multiplyDragByParticleVelocity: boolean,
    vectorField: Texture3D,

}

-- ParticleSystemForceFieldType
type ParticleSystemForceFieldType =
{

}

if not _G.ParticleSystemForceField then
	local ParticleSystemForceFieldType_instance : ParticleSystemForceFieldType = { }
	_G.ParticleSystemForceField = ParticleSystemForceFieldType_instance;
end
