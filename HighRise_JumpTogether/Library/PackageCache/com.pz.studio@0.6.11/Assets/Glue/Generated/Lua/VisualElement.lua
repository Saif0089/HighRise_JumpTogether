--!AddComponentMenu("")

-- VisualElement
type VisualElement =
{
    viewDataKey: string,
    canGrabFocus: boolean,
    layout: Rect,
    contentRect: Rect,
    worldBound: Rect,
    localBound: Rect,
    worldTransform: Matrix4x4,
    name: string,
    enabledInHierarchy: boolean,
    enabledSelf: boolean,
    visible: boolean,
    parent: VisualElement,
    contentContainer: VisualElement,
    childCount: number,
    style: IStyle,
    tooltip: string,
    Q: (_name: string) -> VisualElement,
    RegisterCallback: () -> string,
    RegisterPressCallback: () -> void,
    RegisterLongPressCallback: () -> void,
    Focus: () -> void,
    SetEnabled: (_value: boolean) -> void,
    MarkDirtyRepaint: () -> void,
    ContainsPoint: (_localPoint: Vector2) -> boolean,
    Overlaps: (_rectangle: Rect) -> boolean,
    ClearClassList: () -> void,
    AddToClassList: (_className: string) -> void,
    RemoveFromClassList: (_className: string) -> void,
    ToggleInClassList: (_className: string) -> void,
    EnableInClassList: (_className: string, _enable: boolean) -> void,
    ClassListContains: (_cls: string) -> boolean,
    Add: (_child: VisualElement) -> void,
    Insert: (_index: number, _element: VisualElement) -> void,
    Remove: (_element: VisualElement) -> void,
    RemoveAt: (_index: number) -> void,
    Clear: () -> void,
    ElementAt: (_index: number) -> VisualElement,
    IndexOf: (_element: VisualElement) -> number,
    BringToFront: () -> void,
    SendToBack: () -> void,
    PlaceBehind: (_sibling: VisualElement) -> void,
    PlaceInFront: (_sibling: VisualElement) -> void,
    RemoveFromHierarchy: () -> void,
    Contains: (_child: VisualElement) -> boolean,
    FindCommonAncestor: (_other: VisualElement) -> VisualElement,

}

-- VisualElementType
type VisualElementType =
{
    new: () -> VisualElement,

}

if not _G.VisualElement then
	local VisualElementType_instance : VisualElementType = { }
	_G.VisualElement = VisualElementType_instance;
end
