--!AddComponentMenu("")

-- Texture3D
type Texture3D =
{
    depth: number,
    isReadable: boolean,
    Apply: (_updateMipmaps: boolean, _makeNoLongerReadable: boolean) -> void,
    SetPixel: (_x: number, _y: number, _z: number, _color: Color) -> void,
    GetPixel: (_x: number, _y: number, _z: number) -> Color,
    GetPixelBilinear: (_u: number, _v: number, _w: number) -> Color,

}

-- Texture3DType
type Texture3DType =
{

}

if not _G.Texture3D then
	local Texture3DType_instance : Texture3DType = { }
	_G.Texture3D = Texture3DType_instance;
end
