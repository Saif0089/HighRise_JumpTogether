--!AddComponentMenu("")

-- UIImage
type UIImage =
{
    Dispose: () -> void,
    ShowLoadingIndicator: (_show: boolean) -> void,

}

-- UIImageType
type UIImageType =
{
    new: (_loadingIndicator: boolean) -> UIImage,

}

if not _G.UIImage then
	local UIImageType_instance : UIImageType = { }
	_G.UIImage = UIImageType_instance;
end
