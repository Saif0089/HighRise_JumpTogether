--!AddComponentMenu("")

-- Image
type Image =
{
    image: Texture,
    sourceRect: Rect,
    uv: Rect,
    tintColor: Color,

}

-- ImageType
type ImageType =
{
    new: () -> Image,

}

if not _G.Image then
	local ImageType_instance : ImageType = { }
	_G.Image = ImageType_instance;
end
