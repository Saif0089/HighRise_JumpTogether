--!AddComponentMenu("")

-- MeshRenderer
type MeshRenderer =
{
    additionalVertexStreams: Mesh,
    enlightenVertexStream: Mesh,
    subMeshStartIndex: number,

}

-- MeshRendererType
type MeshRendererType =
{

}

if not _G.MeshRenderer then
	local MeshRendererType_instance : MeshRendererType = { }
	_G.MeshRenderer = MeshRendererType_instance;
end
