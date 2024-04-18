--!AddComponentMenu("")

-- Character2D
type Character2D =
{
    BillboardTransform: Transform,
    AnimationName: string,
    Owner: Character2D,
    Name: string,
    IsRunning: boolean,
    IsWalking: boolean,
    IsSitting: boolean,
    IsLoaded: boolean,
    IsMoving: boolean,
    IsAnchored: boolean,
    IsFacingFront: boolean,
    Height: number,
    PlayAnimation: (_animation: string, _loop: boolean) -> void,
    HasAnimation: (_name: string) -> boolean,
    StopAnimation: () -> void,
    GetAnimationTime: (_name: string, _unitTime: number) -> number,
    GetAnimationUnitTime: (_name: string, _time: number) -> number,
    SetAnimationTime: (_name: string, _time: number) -> void,
    SetAnimationUnitTime: (_name: string, _unitTime: number) -> void,
    CurrentAnimationSupportsBackFacing: () -> boolean,
    PlayErrorAnimation: (_playSound: boolean) -> void,
    FaceFront: () -> void,
    FaceBack: () -> void,
    Hide: () -> void,
    Show: () -> void,
    SetEmptyBehaviour: () -> void,
    Look: (_direction: Vector3, _leftRightOnly: boolean) -> void,
    CancelCurrentBehaviour: () -> void,

}

-- Character2DType
type Character2DType =
{

}

if not _G.Character2D then
	local Character2DType_instance : Character2DType = { }
	_G.Character2D = Character2DType_instance;
end
