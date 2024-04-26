--!AddComponentMenu("")

-- StyleColor
type StyleColor =
{
    value: Color,

}

-- StyleColorType
type StyleColorType =
{

}

if not _G.StyleColor then
	local StyleColorType_instance : StyleColorType = { }
	_G.StyleColor = StyleColorType_instance;
end
