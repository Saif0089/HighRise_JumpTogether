--!AddComponentMenu("")

-- Input
type Input =
{
    isAltPressed: boolean,
    isMouseInput: boolean,
    client: GameClient,
    Tapped: Event,
    LongPressBegan: Event,
    LongPressContinue: Event,
    LongPressEnded: Event,
    PinchOrDragBegan: Event,
    PinchOrDragChanged: Event,
    PinchOrDragEnded: Event,
    MouseWheel: Event,

}

-- InputType
type InputType =
{

}

if not _G.Input then
	local InputType_instance : InputType = { }
	_G.Input = InputType_instance;
end
