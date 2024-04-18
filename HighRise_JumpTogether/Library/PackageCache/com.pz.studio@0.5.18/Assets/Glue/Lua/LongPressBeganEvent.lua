--!AddComponentMenu("")

-- LongPressBeganEvent
type LongPressBeganEvent =
{
    position: Vector2,
    startTime: number,
    successDuration: number,

}

-- LongPressBeganEventType
type LongPressBeganEventType =
{

}

if not _G.LongPressBeganEvent then
	local LongPressBeganEventType_instance : LongPressBeganEventType = { }
	_G.LongPressBeganEvent = LongPressBeganEventType_instance;
end
