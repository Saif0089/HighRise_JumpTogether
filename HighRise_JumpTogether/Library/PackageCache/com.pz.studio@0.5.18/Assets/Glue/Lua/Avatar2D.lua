--!AddComponentMenu("")

-- Avatar2D
type Avatar2D =
{
    Name: string,
    IsLoaded: boolean,
    PetIsLoaded: boolean,
    IsSpeaker: boolean,
    IsSpeaking: boolean,
    IsMuted: boolean,
    IsDeafened: boolean,
    Height: number,
    MoveTo: (_position: Vector3) -> void,

}

-- Avatar2DType
type Avatar2DType =
{

}

if not _G.Avatar2D then
	local Avatar2DType_instance : Avatar2DType = { }
	_G.Avatar2D = Avatar2DType_instance;
end
