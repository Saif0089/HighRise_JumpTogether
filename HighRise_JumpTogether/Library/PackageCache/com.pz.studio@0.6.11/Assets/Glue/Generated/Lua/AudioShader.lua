--!AddComponentMenu("")

-- AudioShader
type AudioShader =
{
    volume: number,
    randomVolume: number,
    pitch: number,
    randomPitch: number,
    isMuted: boolean,
    spatialRange: number,
    Play: (_volume: number, _pitch: number) -> void,
    GetRandomClip: () -> AudioClip,

}

-- AudioShaderType
type AudioShaderType =
{
    new: (_clip: AudioClip) -> AudioShader,

}

if not _G.AudioShader then
	local AudioShaderType_instance : AudioShaderType = { }
	_G.AudioShader = AudioShaderType_instance;
end
