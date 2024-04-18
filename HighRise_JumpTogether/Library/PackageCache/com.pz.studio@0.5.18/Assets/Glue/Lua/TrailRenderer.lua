--!AddComponentMenu("")

-- TrailRenderer
type TrailRenderer =
{
    time: number,
    startWidth: number,
    endWidth: number,
    widthMultiplier: number,
    autodestruct: boolean,
    emitting: boolean,
    numCornerVertices: number,
    numCapVertices: number,
    minVertexDistance: number,
    startColor: Color,
    endColor: Color,
    positionCount: number,
    textureScale: Vector2,
    shadowBias: number,
    generateLightingData: boolean,
    widthCurve: AnimationCurve,
    SetPosition: (_index: number, _position: Vector3) -> void,
    GetPosition: (_index: number) -> Vector3,
    Clear: () -> void,
    BakeMesh: (_mesh: Mesh, _useTransform: boolean) -> void,
    AddPosition: (_position: Vector3) -> void,

}

-- TrailRendererType
type TrailRendererType =
{

}

if not _G.TrailRenderer then
	local TrailRendererType_instance : TrailRendererType = { }
	_G.TrailRenderer = TrailRendererType_instance;
end
