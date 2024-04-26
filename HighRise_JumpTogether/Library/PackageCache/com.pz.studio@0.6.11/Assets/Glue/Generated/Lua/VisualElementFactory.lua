--!AddComponentMenu("")

-- VisualElementFactory
type VisualElementFactory =
{
    name: string,
    new: () -> VisualElement,

}

-- VisualElementFactoryType
type VisualElementFactoryType =
{

}

if not _G.VisualElementFactory then
	local VisualElementFactoryType_instance : VisualElementFactoryType = { }
	_G.VisualElementFactory = VisualElementFactoryType_instance;
end
