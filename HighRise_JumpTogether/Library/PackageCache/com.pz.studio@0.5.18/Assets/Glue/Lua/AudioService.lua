--!AddComponentMenu("")

-- AudioService
type AudioService =
{
    IsPlaying: () -> boolean,
    MusicIntensity: () -> number,
    MusicDuckVolume: () -> number,
    DuckMusic: (_duration: number, _duckOutDuration: number, _duckInDuration: number) -> void,
    PlayMusic: (_shader: AudioShader, _volume: number) -> void,
    PlayMusicURL: (_url: string, _volume: number) -> void,
    StopMusic: (_fadeOut: boolean) -> void,
    PlayShader: (_shader: AudioShader) -> void,
    PlaySoundGlobal: (_shader: AudioShader, _volume: number, _pitch: number, _spatialize: boolean, _loop: boolean) -> AudioSource,
    PlaySound: (_shader: AudioShader, _gameObject: GameObject, _volume: number, _pitch: number, _spatialize: boolean) -> AudioSource,
    StopAudioSource: (_source: AudioSource) -> void,

}

-- AudioServiceType
type AudioServiceType =
{

}

if not _G.AudioService then
	local AudioServiceType_instance : AudioServiceType = { }
	_G.AudioService = AudioServiceType_instance;
end
