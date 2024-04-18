--!AddComponentMenu("")

-- Tween
type Tween =
{
    isPlaying: boolean,
    isPaused: boolean,
    isValid: boolean,
    time: number,
    normalizedTime: number,
    duration: number,
    Play: () -> Tween,
    Stop: (_executeCallbacks: boolean) -> void,
    Pause: () -> void,
    Update: (_deltaTime: number) -> boolean,
    Priority: (_priority: number) -> Tween,
    Delay: (_seconds: number) -> Tween,
    AddDelay: (_seconds: number) -> Tween,
    Duration: (_seconds: number) -> Tween,
    Id: (_id: number) -> Tween,
    DestroyOnStop: (_value: boolean) -> Tween,
    DeactivateOnStop: (_value: boolean) -> Tween,
    DisableOnStop: (_value: boolean) -> Tween,
    AutoStop: (_value: boolean) -> Tween,
    PingPong: () -> Tween,
    From: () -> Tween,
    Loop: (_count: number) -> Tween,
    UnscaledTime: (_unscaled: boolean) -> Tween,
    Element: (_element: Tween) -> Tween,
    EaseInQuadratic: () -> Tween,
    EaseOutQuadratic: () -> Tween,
    EaseInOutQuadratic: () -> Tween,
    EaseInCubic: () -> Tween,
    EaseOutCubic: () -> Tween,
    EaseInOutCubic: () -> Tween,
    EaseInBack: (_amplitude: number) -> Tween,
    EaseOutBack: (_amplitude: number) -> Tween,
    EaseInOutBack: (_amplitude: number) -> Tween,
    EaseInElastic: (_oscillations: number, _springiness: number) -> Tween,
    EaseOutElastic: (_oscillations: number, _springiness: number) -> Tween,
    EaseInOutElastic: (_oscillations: number, _springiness: number) -> Tween,
    EaseInBounce: (_oscillations: number, _springiness: number) -> Tween,
    EaseOutBounce: (_oscillations: number, _springiness: number) -> Tween,
    EaseInOutBounce: (_oscillations: number, _springiness: number) -> Tween,
    EaseInSine: () -> Tween,
    EaseOutSine: () -> Tween,
    EaseInOutSine: () -> Tween,
    EaseInCircle: () -> Tween,
    EaseOutCircle: () -> Tween,
    EaseInOutCircle: () -> Tween,
    EaseInExponential: (_exponent: number) -> Tween,
    EaseOutExponential: (_exponent: number) -> Tween,
    EaseInOutExponential: (_exponent: number) -> Tween,
    EaseInCubicBezier: (_p0: number, _p1: number, _p2: number, _p3: number) -> Tween,
    EaseOutCubicBezier: (_p0: number, _p1: number, _p2: number, _p3: number) -> Tween,
    EaseInOutCubicBezier: (_p0: number, _p1: number, _p2: number, _p3: number) -> Tween,

}

-- TweenType
type TweenType =
{
    Reset: () -> void,
    StopAll: (_executeCallbacks: boolean) -> void,

}

if not _G.Tween then
	local TweenType_instance : TweenType = { }
	_G.Tween = TweenType_instance;
end
