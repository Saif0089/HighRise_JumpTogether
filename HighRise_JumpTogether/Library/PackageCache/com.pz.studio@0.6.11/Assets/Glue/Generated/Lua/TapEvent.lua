--!AddComponentMenu("")

-- TapEvent
type TapEvent =
{
    position: Vector2,
    startFrame: number,

}

-- TapEventType
type TapEventType =
{

}

if not _G.TapEvent then
	local TapEventType_instance : TapEventType = { }
	_G.TapEvent = TapEventType_instance;
end
