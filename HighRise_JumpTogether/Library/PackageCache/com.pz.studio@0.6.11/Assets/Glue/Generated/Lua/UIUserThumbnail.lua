--!AddComponentMenu("")

-- UIUserThumbnail
type UIUserThumbnail =
{
    Unload: () -> void,

}

-- UIUserThumbnailType
type UIUserThumbnailType =
{
    new: () -> UIUserThumbnail,

}

if not _G.UIUserThumbnail then
	local UIUserThumbnailType_instance : UIUserThumbnailType = { }
	_G.UIUserThumbnail = UIUserThumbnailType_instance;
end
