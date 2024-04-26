--!AddComponentMenu("")

-- UIWorldDocument
type UIWorldDocument =
{
    renderer: Renderer,
    clearColor: boolean,
    clearColorValue: Color,
    root: VisualElement,

}

-- UIWorldDocumentType
type UIWorldDocumentType =
{

}

if not _G.UIWorldDocument then
	local UIWorldDocumentType_instance : UIWorldDocumentType = { }
	_G.UIWorldDocument = UIWorldDocumentType_instance;
end
