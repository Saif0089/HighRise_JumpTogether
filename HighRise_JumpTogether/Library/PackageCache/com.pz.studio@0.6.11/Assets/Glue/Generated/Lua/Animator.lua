--!AddComponentMenu("")

-- Animator
type Animator =
{
    isOptimizable: boolean,
    isHuman: boolean,
    hasRootMotion: boolean,
    humanScale: number,
    isInitialized: boolean,
    deltaPosition: Vector3,
    deltaRotation: Quaternion,
    velocity: Vector3,
    angularVelocity: Vector3,
    rootPosition: Vector3,
    rootRotation: Quaternion,
    applyRootMotion: boolean,
    hasTransformHierarchy: boolean,
    gravityWeight: number,
    bodyPosition: Vector3,
    bodyRotation: Quaternion,
    stabilizeFeet: boolean,
    layerCount: number,
    parameterCount: number,
    feetPivotActive: number,
    pivotWeight: number,
    pivotPosition: Vector3,
    isMatchingTarget: boolean,
    speed: number,
    targetPosition: Vector3,
    targetRotation: Quaternion,
    avatarRoot: Transform,
    playbackTime: number,
    recorderStartTime: number,
    recorderStopTime: number,
    hasBoundPlayables: boolean,
    layersAffectMassCenter: boolean,
    leftFeetBottomHeight: number,
    rightFeetBottomHeight: number,
    logWarnings: boolean,
    fireEvents: boolean,
    keepAnimatorStateOnDisable: boolean,
    writeDefaultValuesOnDisable: boolean,
    GetFloat: (_name: string) -> number,
    SetFloat: (_name: string, _value: number) -> void,
    GetBool: (_name: string) -> boolean,
    SetBool: (_name: string, _value: boolean) -> void,
    GetInteger: (_name: string) -> number,
    SetInteger: (_name: string, _value: number) -> void,
    SetTrigger: (_name: string) -> void,
    ResetTrigger: (_name: string) -> void,
    IsParameterControlledByCurve: (_name: string) -> boolean,
    SetLookAtPosition: (_lookAtPosition: Vector3) -> void,
    SetLookAtWeight: (_weight: number) -> void,
    GetLayerName: (_layerIndex: number) -> string,
    GetLayerIndex: (_layerName: string) -> number,
    GetLayerWeight: (_layerIndex: number) -> number,
    SetLayerWeight: (_layerIndex: number, _weight: number) -> void,
    GetCurrentAnimatorClipInfoCount: (_layerIndex: number) -> number,
    GetNextAnimatorClipInfoCount: (_layerIndex: number) -> number,
    IsInTransition: (_layerIndex: number) -> boolean,
    InterruptMatchTarget: () -> void,
    CrossFadeInFixedTime: (_stateName: string, _fixedTransitionDuration: number) -> void,
    WriteDefaultValues: () -> void,
    CrossFade: (_stateName: string, _normalizedTransitionDuration: number, _layer: number, _normalizedTimeOffset: number) -> void,
    PlayInFixedTime: (_stateName: string, _layer: number) -> void,
    Play: (_stateName: string, _layer: number) -> void,
    StartPlayback: () -> void,
    StopPlayback: () -> void,
    StartRecording: (_frameCount: number) -> void,
    StopRecording: () -> void,
    HasState: (_layerIndex: number, _stateID: number) -> boolean,
    Update: (_deltaTime: number) -> void,
    Rebind: () -> void,
    ApplyBuiltinRootMotion: () -> void,

}

-- AnimatorType
type AnimatorType =
{
    StringToHash: (_name: string) -> number,

}

if not _G.Animator then
	local AnimatorType_instance : AnimatorType = { }
	_G.Animator = AnimatorType_instance;
end
