--!AddComponentMenu("")

-- VisualTreeFactory
type VisualTreeFactory =
{
    Instantiate: (_type: Type) -> VisualElement,
    FindEntry: (_name: string) -> VisualElementFactory,

}

-- VisualTreeFactoryType
type VisualTreeFactoryType =
{

}

if not _G.VisualTreeFactory then
	local VisualTreeFactoryType_instance : VisualTreeFactoryType = { }
	_G.VisualTreeFactory = VisualTreeFactoryType_instance;
end
