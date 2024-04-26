--!AddComponentMenu("")

-- AnimationCurve
type AnimationCurve =
{
    length: number,
    Evaluate: (_time: number) -> number,
    AddKey: (_time: number, _value: number) -> number,
    ClearKeys: () -> void,
    RemoveKey: (_index: number) -> void,
    SmoothTangents: (_index: number, _weight: number) -> void,
    CopyFrom: (_other: AnimationCurve) -> void,

}

-- AnimationCurveType
type AnimationCurveType =
{
    Constant: (_timeStart: number, _timeEnd: number, _value: number) -> AnimationCurve,
    Linear: (_timeStart: number, _valueStart: number, _timeEnd: number, _valueEnd: number) -> AnimationCurve,
    EaseInOut: (_timeStart: number, _valueStart: number, _timeEnd: number, _valueEnd: number) -> AnimationCurve,

}

if not _G.AnimationCurve then
	local AnimationCurveType_instance : AnimationCurveType = { }
	_G.AnimationCurve = AnimationCurveType_instance;
end
