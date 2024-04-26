--!AddComponentMenu("")

-- Texture2D
type Texture2D =
{
    ignoreMipmapLimit: boolean,
    mipmapLimitGroup: string,
    activeMipmapLimit: number,
    isReadable: boolean,
    vtOnly: boolean,
    streamingMipmaps: boolean,
    streamingMipmapsPriority: number,
    requestedMipmapLevel: number,
    minimumMipmapLevel: number,
    calculatedMipmapLevel: number,
    desiredMipmapLevel: number,
    loadingMipmapLevel: number,
    loadedMipmapLevel: number,
    Compress: (_highQuality: boolean) -> void,
    ClearRequestedMipmapLevel: () -> void,
    IsRequestedMipmapLevelLoaded: () -> boolean,
    ClearMinimumMipmapLevel: () -> void,
    SetPixel: (_x: number, _y: number, _color: Color) -> void,
    GetPixel: (_x: number, _y: number) -> Color,
    GetPixelBilinear: (_u: number, _v: number) -> Color,
    Apply: (_updateMipmaps: boolean, _makeNoLongerReadable: boolean) -> void,
    Reinitialize: (_width: number, _height: number) -> boolean,
    ReadPixels: (_source: Rect, _destX: number, _destY: number, _recalculateMipMaps: boolean) -> void,

}

-- Texture2DType
type Texture2DType =
{
    new: (_width: number, _height: number) -> Texture2D,

}

if not _G.Texture2D then
	local Texture2DType_instance : Texture2DType = { }
	_G.Texture2D = Texture2DType_instance;
end
