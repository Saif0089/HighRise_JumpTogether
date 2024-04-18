--!AddComponentMenu("")

-- PinchGestureChanged
type PinchGestureChanged =
{
    deltaPosition: Vector2,
    startPosition: Vector2,
    position: Vector2,
    direction: Vector2,
    distance: number,
    scale: number,
    isPinching: boolean,

}

-- PinchGestureChangedType
type PinchGestureChangedType =
{

}

if not _G.PinchGestureChanged then
	local PinchGestureChangedType_instance : PinchGestureChangedType = { }
	_G.PinchGestureChanged = PinchGestureChangedType_instance;
end
