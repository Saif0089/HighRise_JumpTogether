--!AddComponentMenu("")

-- Length
type Length =
{
    value: number,
    IsAuto: () -> boolean,
    IsNone: () -> boolean,

}

-- LengthType
type LengthType =
{
    Percent: (_value: number) -> Length,
    Auto: () -> Length,
    None: () -> Length,

}

if not _G.Length then
	local LengthType_instance : LengthType = { }
	_G.Length = LengthType_instance;
end
