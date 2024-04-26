--!AddComponentMenu("")

-- Camera
type Camera =
{
    nearClipPlane: number,
    farClipPlane: number,
    fieldOfView: number,
    allowHDR: boolean,
    allowMSAA: boolean,
    allowDynamicResolution: boolean,
    forceIntoRenderTexture: boolean,
    orthographicSize: number,
    orthographic: boolean,
    transparencySortAxis: Vector3,
    depth: number,
    aspect: number,
    velocity: Vector3,
    cullingMask: number,
    eventMask: number,
    layerCullSpherical: boolean,
    overrideSceneCullingMask: number,
    useOcclusionCulling: boolean,
    cullingMatrix: Matrix4x4,
    backgroundColor: Color,
    clearStencilAfterLightingPass: boolean,
    usePhysicalProperties: boolean,
    iso: number,
    shutterSpeed: number,
    aperture: number,
    focusDistance: number,
    focalLength: number,
    bladeCount: number,
    curvature: Vector2,
    barrelClipping: number,
    anamorphism: number,
    sensorSize: Vector2,
    lensShift: Vector2,
    rect: Rect,
    pixelRect: Rect,
    pixelWidth: number,
    pixelHeight: number,
    scaledPixelWidth: number,
    scaledPixelHeight: number,
    targetDisplay: number,
    cameraToWorldMatrix: Matrix4x4,
    worldToCameraMatrix: Matrix4x4,
    projectionMatrix: Matrix4x4,
    nonJitteredProjectionMatrix: Matrix4x4,
    useJitteredProjectionMatrixForTransparentRendering: boolean,
    previousViewProjectionMatrix: Matrix4x4,
    stereoEnabled: boolean,
    stereoSeparation: number,
    stereoConvergence: number,
    areVRStereoViewMatricesWithinSingleCullTolerance: boolean,
    commandBufferCount: number,
    ScreenToWorldPoint: (_position: Vector3) -> Vector3,
    WorldToScreenPoint: (_position: Vector3) -> Vector3,
    ScreenPointToRay: (_position: Vector3) -> Vector3,
    Reset: () -> void,
    ResetTransparencySortSettings: () -> void,
    ResetAspect: () -> void,
    ResetCullingMatrix: () -> void,
    ResetReplacementShader: () -> void,
    GetGateFittedFieldOfView: () -> number,
    GetGateFittedLensShift: () -> Vector2,
    ResetWorldToCameraMatrix: () -> void,
    ResetProjectionMatrix: () -> void,
    CalculateObliqueMatrix: (_clipPlane: Vector4) -> Matrix4x4,
    ScreenToViewportPoint: (_position: Vector3) -> Vector3,
    ViewportToScreenPoint: (_position: Vector3) -> Vector3,
    ResetStereoProjectionMatrices: () -> void,
    ResetStereoViewMatrices: () -> void,
    Render: () -> void,
    RenderDontRestore: () -> void,
    CopyFrom: (_other: Camera) -> void,
    RemoveAllCommandBuffers: () -> void,

}

-- CameraType
type CameraType =
{
    FocalLengthToFieldOfView: (_focalLength: number, _sensorSize: number) -> number,
    FieldOfViewToFocalLength: (_fieldOfView: number, _sensorSize: number) -> number,
    HorizontalToVerticalFieldOfView: (_horizontalFieldOfView: number, _aspectRatio: number) -> number,
    VerticalToHorizontalFieldOfView: (_verticalFieldOfView: number, _aspectRatio: number) -> number,
    SetupCurrent: (_cur: Camera) -> void,

}

if not _G.Camera then
	local CameraType_instance : CameraType = { }
	_G.Camera = CameraType_instance;
end