--!AddComponentMenu("")

-- Avatar
type Avatar =
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

-- AvatarType
type AvatarType =
{

}

if not _G.Avatar then
	local AvatarType_instance : AvatarType = { }
	_G.Avatar = AvatarType_instance;
end
