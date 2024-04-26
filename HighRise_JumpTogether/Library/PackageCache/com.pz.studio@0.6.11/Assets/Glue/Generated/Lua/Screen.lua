--!AddComponentMenu("")

-- Screen
type Screen =
{

}

-- ScreenType
type ScreenType =
{

}

if not _G.Screen then
	local ScreenType_instance : ScreenType = { }
	_G.Screen = ScreenType_instance;
end
