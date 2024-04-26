--!AddComponentMenu("")

-- StyleFloat
type StyleFloat =
{
    value: number,

}

-- StyleFloatType
type StyleFloatType =
{

}

if not _G.StyleFloat then
	local StyleFloatType_instance : StyleFloatType = { }
	_G.StyleFloat = StyleFloatType_instance;
end
