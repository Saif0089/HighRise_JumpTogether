--!AddComponentMenu("")

-- Chat
type Chat =
{
    allJoinedChannels: table,
    TextMessageReceivedHandler: Event,
    WhisperReceivedHandler: Event,
    PlayerJoinedChannel: Event,
    PlayerLeftChannel: Event,
    ChannelDestroyed: Event,
    DisplayTextMessage: (_channel: ChannelInfo, _from: Player, _message: string) -> void,

}

-- ChatType
type ChatType =
{

}

if not _G.Chat then
	local ChatType_instance : ChatType = { }
	_G.Chat = ChatType_instance;
end
