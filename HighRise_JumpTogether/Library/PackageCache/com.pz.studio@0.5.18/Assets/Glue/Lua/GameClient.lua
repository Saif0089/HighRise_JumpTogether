--!AddComponentMenu("")

-- GameClient
type GameClient =
{
    mainCamera: Camera,
    worldBounds: Bounds,
    Reset: Event,

}

-- GameClientType
type GameClientType =
{

}

if not _G.GameClient then
	local GameClientType_instance : GameClientType = { }
	_G.GameClient = GameClientType_instance;
end
