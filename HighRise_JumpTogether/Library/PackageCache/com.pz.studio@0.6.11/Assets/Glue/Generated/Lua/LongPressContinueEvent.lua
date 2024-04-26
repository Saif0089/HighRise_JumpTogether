--!AddComponentMenu("")

-- LongPressContinueEvent
type LongPressContinueEvent =
{
    position: Vector2,
    startTime: number,
    progress: number,

}

-- LongPressContinueEventType
type LongPressContinueEventType =
{

}

if not _G.LongPressContinueEvent then
	local LongPressContinueEventType_instance : LongPressContinueEventType = { }
	_G.LongPressContinueEvent = LongPressContinueEventType_instance;
end
