--!AddComponentMenu("")

-- LayerMask
type LayerMask =
{
    value: number,

}

-- LayerMaskType
type LayerMaskType =
{
    NameToLayer: (_name: string) -> number,
    LayerToName: (_layer: number) -> string,

}

if not _G.LayerMask then
	local LayerMaskType_instance : LayerMaskType = { }
	_G.LayerMask = LayerMaskType_instance;
end
