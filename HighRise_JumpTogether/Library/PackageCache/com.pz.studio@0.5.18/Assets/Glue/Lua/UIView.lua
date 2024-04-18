--!AddComponentMenu("")

-- UIView
type UIView =
{
    isDisposed: boolean,
    sortOrder: number,
    isBound: boolean,
    isDisplayed: boolean,
    isRunningAsync: boolean,
    isStale: boolean,
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
