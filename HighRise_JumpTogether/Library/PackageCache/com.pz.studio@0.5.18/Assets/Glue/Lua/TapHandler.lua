--!AddComponentMenu("")

-- TapHandler
type TapHandler =
{
    Tapped: Event,
    moveTo: boolean,
    distance: number,
    Perform: () -> void,

}

-- TapHandlerType
type TapHandlerType =
{

}

if not _G.TapHandler then
	local TapHandlerType_instance : TapHandlerType = { }
	_G.TapHandler = TapHandlerType_instance;
end
