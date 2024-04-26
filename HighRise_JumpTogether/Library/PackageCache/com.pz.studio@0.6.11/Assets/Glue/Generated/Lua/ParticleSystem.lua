--!AddComponentMenu("")

-- ParticleSystem
type ParticleSystem =
{
    isPlaying: boolean,
    isEmitting: boolean,
    isStopped: boolean,
    isPaused: boolean,
    particleCount: number,
    time: number,
    totalTime: number,
    randomSeed: number,
    useAutoRandomSeed: boolean,
    proceduralSimulationSupported: boolean,
    has3DParticleRotations: boolean,
    hasNonUniformParticleSizes: boolean,
    Stop: (_includeChildren: boolean) -> void,
    Simulate: (_t: number, _withChildren: boolean, _restart: boolean, _fixedTimeStep: boolean) -> void,
    Play: (_withChildren: boolean) -> void,
    Pause: (_withChildren: boolean) -> void,
    Clear: (_withChildren: boolean) -> void,
    IsAlive: (_withChildren: boolean) -> boolean,
    Emit: (_count: number) -> void,
    TriggerSubEmitter: (_subEmitterIndex: number) -> void,
    AllocateAxisOfRotationAttribute: () -> void,
    AllocateMeshIndexAttribute: () -> void,

}

-- ParticleSystemType
type ParticleSystemType =
{
    ResetPreMappedBufferMemory: () -> void,
    SetMaximumPreMappedBufferCounts: (_vertexBuffersCount: number, _indexBuffersCount: number) -> void,

}

if not _G.ParticleSystem then
	local ParticleSystemType_instance : ParticleSystemType = { }
	_G.ParticleSystem = ParticleSystemType_instance;
end
