--!AddComponentMenu("")

-- AudioSource
type AudioSource =
{
    volume: number,
    pitch: number,
    time: number,
    timeSamples: number,
    clip: AudioClip,
    isPlaying: boolean,
    isVirtual: boolean,
    loop: boolean,
    ignoreListenerVolume: boolean,
    playOnAwake: boolean,
    ignoreListenerPause: boolean,
    panStereo: number,
    spatialBlend: number,
    spatialize: boolean,
    spatializePostEffects: boolean,
    reverbZoneMix: number,
    bypassEffects: boolean,
    bypassListenerEffects: boolean,
    bypassReverbZones: boolean,
    dopplerLevel: number,
    spread: number,
    priority: number,
    mute: boolean,
    minDistance: number,
    maxDistance: number,
    Play: () -> void,
    PlayDelayed: (_delay: number) -> void,
    PlayScheduled: (_time: number) -> void,
    PlayOneShot: (_clip: AudioClip) -> void,
    SetScheduledStartTime: (_time: number) -> void,
    SetScheduledEndTime: (_time: number) -> void,
    Stop: () -> void,
    Pause: () -> void,
    UnPause: () -> void,
    SetSpatializerFloat: (_index: number, _value: number) -> boolean,
    SetAmbisonicDecoderFloat: (_index: number, _value: number) -> boolean,

}

-- AudioSourceType
type AudioSourceType =
{
    PlayClipAtPoint: (_clip: AudioClip, _position: Vector3) -> void,

}

if not _G.AudioSource then
	local AudioSourceType_instance : AudioSourceType = { }
	_G.AudioSource = AudioSourceType_instance;
end
