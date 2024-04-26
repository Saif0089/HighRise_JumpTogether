--!AddComponentMenu("")

-- PinchGestureEnded
type PinchGestureEnded =
{
    deltaPosition: Vector2,
    startPosition: Vector2,
    position: Vector2,
    velocity: Vector2,
    distance: number,
    scale: number,

}

-- PinchGestureEndedType
type PinchGestureEndedType =
{

}

if not _G.PinchGestureEnded then
	local PinchGestureEndedType_instance : PinchGestureEndedType = { }
	_G.PinchGestureEnded = PinchGestureEndedType_instance;
end
