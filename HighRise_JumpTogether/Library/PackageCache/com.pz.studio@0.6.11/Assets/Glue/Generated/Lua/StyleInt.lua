--!AddComponentMenu("")

-- StyleInt
type StyleInt =
{
    value: number,

}

-- StyleIntType
type StyleIntType =
{

}

if not _G.StyleInt then
	local StyleIntType_instance : StyleIntType = { }
	_G.StyleInt = StyleIntType_instance;
end
