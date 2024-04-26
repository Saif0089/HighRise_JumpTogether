--!AddComponentMenu("")

-- Scene
type Scene =
{
    id: number,
    mainCamera: Camera,
    PlayerJoined: Event,
    PlayerLeft: Event,

}

-- SceneType
type SceneType =
{

}

if not _G.Scene then
	local SceneType_instance : SceneType = { }
	_G.Scene = SceneType_instance;
end
