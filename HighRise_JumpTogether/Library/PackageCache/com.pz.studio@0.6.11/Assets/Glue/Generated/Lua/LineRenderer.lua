--!AddComponentMenu("")

-- LineRenderer
type LineRenderer =
{
    startWidth: number,
    endWidth: number,
    widthMultiplier: number,
    numCornerVertices: number,
    numCapVertices: number,
    useWorldSpace: boolean,
    loop: boolean,
    startColor: Color,
    endColor: Color,
    positionCount: number,
    textureScale: Vector2,
    shadowBias: number,
    generateLightingData: boolean,
    widthCurve: AnimationCurve,
    SetPosition: (_index: number, _position: Vector3) -> void,
    GetPosition: (_index: number) -> Vector3,
    Simplify: (_tolerance: number) -> void,
    BakeMesh: (_mesh: Mesh, _useTransform: boolean) -> void,

}

-- LineRendererType
type LineRendererType =
{

}

if not _G.LineRenderer then
	local LineRendererType_instance : LineRendererType = { }
	_G.LineRenderer = LineRendererType_instance;
end
