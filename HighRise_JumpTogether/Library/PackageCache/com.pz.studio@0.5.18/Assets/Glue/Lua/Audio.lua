--!AddComponentMenu("")

-- Audio
type Audio =
{
    isPlaying: boolean,
    musicIntensity: number,
    GetMusicIntensity: (_low: number, _high: number, _normalizeVolume: boolean) -> number,
    DuckMusic: (_duration: number, _duckOutDuration: number, _duckInDuration: number) -> void,
    PlayMusic: (_shader: AudioShader, _volume: number) -> void,
    PlayMusicURL: (_url: string, _volume: number) -> void,
    StopMusic: (_fadeOut: boolean) -> void,
    PlayShader: (_shader: AudioShader) -> void,
    PlaySoundGlobal: (_shader: AudioShader, _volume: number, _pitch: number, _spatialize: boolean, _loop: boolean) -> AudioSource,
    PlaySound: (_shader: AudioShader, _gameObject: GameObject, _volume: number, _pitch: number, _spatialize: boolean) -> AudioSource,
    StopAudioSource: (_source: AudioSource) -> void,

}

-- AudioType
type AudioType =
{

}

if not _G.Audio then
	local AudioType_instance : AudioType = { }
	_G.Audio = AudioType_instance;
end
