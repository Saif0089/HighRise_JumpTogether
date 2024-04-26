--!AddComponentMenu("")

-- LongPressEndedEvent
type LongPressEndedEvent =
{
    position: Vector2,
    cancelled: boolean,
    progress: number,

}

-- LongPressEndedEventType
type LongPressEndedEventType =
{

}

if not _G.LongPressEndedEvent then
	local LongPressEndedEventType_instance : LongPressEndedEventType = { }
	_G.LongPressEndedEvent = LongPressEndedEventType_instance;
end
