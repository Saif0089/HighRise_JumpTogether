--!AddComponentMenu("")

-- WorldScene
type WorldScene =
{
    id: number,
    mainCamera: Camera,
    PlayerJoined: Event,
    PlayerLeft: Event,

}

-- WorldSceneType
type WorldSceneType =
{

}

if not _G.WorldScene then
	local WorldSceneType_instance : WorldSceneType = { }
	_G.WorldScene = WorldSceneType_instance;
end
