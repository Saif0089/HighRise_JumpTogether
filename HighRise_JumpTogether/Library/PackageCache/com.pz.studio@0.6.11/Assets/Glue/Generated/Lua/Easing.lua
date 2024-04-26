--!AddComponentMenu("")

-- Easing
type Easing =
{

}

-- EasingType
type EasingType =
{
    Quadratic: (_t: number) -> number,
    Cubic: (_t: number) -> number,
    Back: (_t: number, _p: number) -> number,
    Circle: (_t: number) -> number,
    Exponential: (_t: number, _p: number) -> number,
    Sine: (_t: number) -> number,
    CubicBezier: (_t: number, _x1: number, _y1: number, _x2: number, _y2: number) -> number,
    Bounce: (_t: number, _bounces: number, _bounciness: number) -> number,
    Elastic: (_t: number, _oscillations: number, _springiness: number) -> number,

}

if not _G.Easing then
	local EasingType_instance : EasingType = { }
	_G.Easing = EasingType_instance;
end
