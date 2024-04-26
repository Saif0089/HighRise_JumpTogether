--!AddComponentMenu("")

-- Player
type Player =
{
    chatBubbleTransform: Transform,

}

-- PlayerType
type PlayerType =
{

}

if not _G.Player then
	local PlayerType_instance : PlayerType = { }
	_G.Player = PlayerType_instance;
end
