--!AddComponentMenu("")

-- WorldWheelEvent
type WorldWheelEvent =
{
    delta: Vector2,

}

-- WorldWheelEventType
type WorldWheelEventType =
{

}

if not _G.WorldWheelEvent then
	local WorldWheelEventType_instance : WorldWheelEventType = { }
	_G.WorldWheelEvent = WorldWheelEventType_instance;
end
