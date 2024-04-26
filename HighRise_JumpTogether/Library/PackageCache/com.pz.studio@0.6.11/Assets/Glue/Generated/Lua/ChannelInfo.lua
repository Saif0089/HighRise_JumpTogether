--!AddComponentMenu("")

-- ChannelInfo
type ChannelInfo =
{
    players: table,
    name: string,
    allowsText: boolean,
    allowsVoice: boolean,
    priority: number,
    isWhisperChannel: boolean,

}

-- ChannelInfoType
type ChannelInfoType =
{

}

if not _G.ChannelInfo then
	local ChannelInfoType_instance : ChannelInfoType = { }
	_G.ChannelInfo = ChannelInfoType_instance;
end
