--!AddComponentMenu("")

-- AnimationEvent
type AnimationEvent =
{
    stringParameter: string,
    floatParameter: number,
    intParameter: number,
    objectReferenceParameter: Object,
    functionName: string,
    time: number,
    isFiredByLegacy: boolean,
    isFiredByAnimator: boolean,

}

-- AnimationEventType
type AnimationEventType =
{

}

if not _G.AnimationEvent then
	local AnimationEventType_instance : AnimationEventType = { }
	_G.AnimationEvent = AnimationEventType_instance;
end
