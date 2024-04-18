--!AddComponentMenu("")

-- Color
type Color =
{
    r: number,
    g: number,
    b: number,
    a: number,
    grayscale: number,
    linear: Color,
    gamma: Color,
    maxColorComponent: number,

}

-- ColorType
type ColorType =
{
    Lerp: (_a: Color, _b: Color, _t: number) -> Color,
    LerpUnclamped: (_a: Color, _b: Color, _t: number) -> Color,
    HSVToRGB: (_H: number, _S: number, _V: number) -> Color,
    new: (_r: number, _g: number, _b: number) -> Color,

}

if not _G.Color then
	local ColorType_instance : ColorType = { }
	_G.Color = ColorType_instance;
end
