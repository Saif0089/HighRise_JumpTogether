--!AddComponentMenu("")

-- AudioClip
type AudioClip =
{
    length: number,
    samples: number,
    channels: number,
    frequency: number,
    preloadAudioData: boolean,
    ambisonic: boolean,
    loadInBackground: boolean,
    LoadAudioData: () -> boolean,
    UnloadAudioData: () -> boolean,

}

-- AudioClipType
type AudioClipType =
{
    Create: (_name: string, _lengthSamples: number, _channels: number, _frequency: number, _stream: boolean) -> AudioClip,

}

if not _G.AudioClip then
	local AudioClipType_instance : AudioClipType = { }
	_G.AudioClip = AudioClipType_instance;
end
