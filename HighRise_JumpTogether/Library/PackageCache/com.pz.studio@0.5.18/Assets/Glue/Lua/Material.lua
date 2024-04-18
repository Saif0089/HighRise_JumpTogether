--!AddComponentMenu("")

-- Material
type Material =
{
    color: Color,
    mainTexture: Texture,
    mainTextureOffset: Vector2,
    mainTextureScale: Vector2,
    renderQueue: number,
    doubleSidedGI: boolean,
    enableInstancing: boolean,
    passCount: number,
    HasProperty: (_nameID: number) -> boolean,
    HasFloat: (_name: string) -> boolean,
    HasInt: (_name: string) -> boolean,
    HasInteger: (_name: string) -> boolean,
    HasTexture: (_name: string) -> boolean,
    HasMatrix: (_name: string) -> boolean,
    HasVector: (_name: string) -> boolean,
    HasColor: (_name: string) -> boolean,
    HasBuffer: (_name: string) -> boolean,
    HasConstantBuffer: (_name: string) -> boolean,
    EnableKeyword: (_keyword: string) -> void,
    DisableKeyword: (_keyword: string) -> void,
    IsKeywordEnabled: (_keyword: string) -> boolean,
    SetShaderPassEnabled: (_passName: string, _enabled: boolean) -> void,
    GetShaderPassEnabled: (_passName: string) -> boolean,
    GetPassName: (_pass: number) -> string,
    FindPass: (_passName: string) -> number,
    SetOverrideTag: (_tag: string, _val: string) -> void,
    GetTag: (_tag: string, _searchFallbacks: boolean, _defaultValue: string) -> string,
    Lerp: (_start: Material, _end: Material, _t: number) -> void,
    SetPass: (_pass: number) -> boolean,
    CopyPropertiesFromMaterial: (_mat: Material) -> void,
    CopyMatchingPropertiesFromMaterial: (_mat: Material) -> void,
    ComputeCRC: () -> number,
    SetInt: (_name: string, _value: number) -> void,
    SetFloat: (_name: string, _value: number) -> void,
    SetInteger: (_name: string, _value: number) -> void,
    SetColor: (_name: string, _value: Color) -> void,
    SetVector: (_name: string, _value: Vector4) -> void,
    SetMatrix: (_name: string, _value: Matrix4x4) -> void,
    SetTexture: (_name: string, _value: Texture) -> void,
    GetInt: (_name: string) -> number,
    GetFloat: (_name: string) -> number,
    GetInteger: (_name: string) -> number,
    GetColor: (_name: string) -> Color,
    GetVector: (_name: string) -> Vector4,
    GetMatrix: (_name: string) -> Matrix4x4,
    GetTexture: (_name: string) -> Texture,
    SetTextureOffset: (_name: string, _value: Vector2) -> void,
    SetTextureScale: (_name: string, _value: Vector2) -> void,
    GetTextureOffset: (_name: string) -> Vector2,
    GetTextureScale: (_name: string) -> Vector2,

}

-- MaterialType
type MaterialType =
{
    new: (_source: Material) -> Material,

}

if not _G.Material then
	local MaterialType_instance : MaterialType = { }
	_G.Material = MaterialType_instance;
end
