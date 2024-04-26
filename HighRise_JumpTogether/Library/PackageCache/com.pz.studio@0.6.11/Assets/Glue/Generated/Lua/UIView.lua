--!AddComponentMenu("")

-- UIView
type UIView =
{
    isDisplayed: boolean,
    Reset: () -> void,
    Dispose: () -> void,

}

-- UIViewType
type UIViewType =
{
    BindHierarchy: (_element: VisualElement) -> void,
    DisposeChildren: (_element: VisualElement) -> void,
    ClearAndDisposeChildren: (_element: VisualElement) -> void,
    new: () -> UIView,

}

if not _G.UIView then
	local UIViewType_instance : UIViewType = { }
	_G.UIView = UIViewType_instance;
end
