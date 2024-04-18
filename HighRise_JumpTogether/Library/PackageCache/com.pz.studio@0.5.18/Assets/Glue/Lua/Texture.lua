--!AddComponentMenu("")

-- Texture
type Texture =
{
    mipmapCount: number,
    width: number,
    height: number,
    isReadable: boolean,
    anisoLevel: number,
    mipMapBias: number,
    texelSize: Vector2,
    updateCount: number,
    isDataSRGB: boolean,
    IncrementUpdateCount: () -> void,

}

-- TextureType
type TextureType =
{
    SetGlobalAnisotropicFilteringLimits: (_forcedMin: number, _globalMax: number) -> void,
    SetStreamingTextureMaterialDebugProperties: () -> void,

}

if not _G.Texture then
	local TextureType_instance : TextureType = { }
	_G.Texture = TextureType_instance;
end
