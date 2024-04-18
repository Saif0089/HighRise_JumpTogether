--!AddComponentMenu("")

-- PinchGestureBegan
type PinchGestureBegan =
{
    deltaPosition: Vector2,
    startPosition: Vector2,
    position: Vector2,
    direction: Vector2,
    distance: number,
    scale: number,
    isPinching: boolean,

}

-- PinchGestureBeganType
type PinchGestureBeganType =
{

}

if not _G.PinchGestureBegan then
	local PinchGestureBeganType_instance : PinchGestureBeganType = { }
	_G.PinchGestureBegan = PinchGestureBeganType_instance;
end
