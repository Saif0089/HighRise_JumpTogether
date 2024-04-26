--!AddComponentMenu("")

-- StyleLength
type StyleLength =
{
    value: Length,

}

-- StyleLengthType
type StyleLengthType =
{

}

if not _G.StyleLength then
	local StyleLengthType_instance : StyleLengthType = { }
	_G.StyleLength = StyleLengthType_instance;
end
