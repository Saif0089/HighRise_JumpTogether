--!AddComponentMenu("")

-- Renderer
type Renderer =
{
    bounds: Bounds,
    localBounds: Bounds,
    enabled: boolean,
    isVisible: boolean,
    receiveShadows: boolean,
    forceRenderingOff: boolean,
    staticShadowCaster: boolean,
    renderingLayerMask: number,
    rendererPriority: number,
    sortingLayerName: string,
    sortingLayerID: number,
    sortingOrder: number,
    allowOcclusionWhenDynamic: boolean,
    isPartOfStaticBatch: boolean,
    worldToLocalMatrix: Matrix4x4,
    localToWorldMatrix: Matrix4x4,
    lightProbeProxyVolumeOverride: GameObject,
    probeAnchor: Transform,
    lightmapIndex: number,
    realtimeLightmapIndex: number,
    lightmapScaleOffset: Vector4,
    realtimeLightmapScaleOffset: Vector4,
    material: Material,
    sharedMaterial: Material,
    ResetBounds: () -> void,
    ResetLocalBounds: () -> void,
    HasPropertyBlock: () -> boolean,

}

-- RendererType
type RendererType =
{

}

if not _G.Renderer then
	local RendererType_instance : RendererType = { }
	_G.Renderer = RendererType_instance;
end
