--!AddComponentMenu("")

-- Mesh
type Mesh =
{
    vertexBufferCount: number,
    blendShapeCount: number,
    bindposeCount: number,
    isReadable: boolean,
    vertexCount: number,
    subMeshCount: number,
    bounds: Bounds,
    vertexAttributeCount: number,
    GetVertexBufferStride: (_stream: number) -> number,
    ClearBlendShapes: () -> void,
    GetBlendShapeName: (_shapeIndex: number) -> string,
    GetBlendShapeIndex: (_blendShapeName: string) -> number,
    GetBlendShapeFrameCount: (_shapeIndex: number) -> number,
    GetBlendShapeFrameWeight: (_shapeIndex: number, _frameIndex: number) -> number,
    MarkModified: () -> void,
    GetUVDistributionMetric: (_uvSetIndex: number) -> number,
    GetIndexStart: (_submesh: number) -> number,
    GetIndexCount: (_submesh: number) -> number,
    GetBaseVertex: (_submesh: number) -> number,
    Clear: (_keepVertexLayout: boolean) -> void,
    RecalculateBounds: () -> void,
    RecalculateNormals: () -> void,
    RecalculateTangents: () -> void,
    RecalculateUVDistributionMetric: (_uvSetIndex: number, _uvAreaThreshold: number) -> void,
    RecalculateUVDistributionMetrics: (_uvAreaThreshold: number) -> void,
    MarkDynamic: () -> void,
    UploadMeshData: (_markNoLongerReadable: boolean) -> void,
    Optimize: () -> void,
    OptimizeIndexBuffers: () -> void,
    OptimizeReorderVertexBuffer: () -> void,

}

-- MeshType
type MeshType =
{
    new: () -> Mesh,

}

if not _G.Mesh then
	local MeshType_instance : MeshType = { }
	_G.Mesh = MeshType_instance;
end
