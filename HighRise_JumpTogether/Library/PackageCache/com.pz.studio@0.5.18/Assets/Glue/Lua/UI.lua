--!AddComponentMenu("")

-- UI
type UI =
{
    EmotesOpened: Event,
    EmotesClosed: Event,
    EmoteSelected: Event,
    OpenMiniProfile: (_player: Player) -> void,
    OpenPopup: (_ve: UIView) -> number,

}

-- UIType
type UIType =
{

}

if not _G.UI then
	local UIType_instance : UIType = { }
	_G.UI = UIType_instance;
end
