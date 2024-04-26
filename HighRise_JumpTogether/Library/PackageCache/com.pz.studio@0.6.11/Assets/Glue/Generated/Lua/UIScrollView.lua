--!AddComponentMenu("")

-- UIScrollView
type UIScrollView =
{
    scrollableSize: number,
    viewportSize: number,
    hasInertia: boolean,
    isAtEnd: boolean,
    isScrolling: boolean,
    value: number,
    contentViewport: VisualElement,
    contentContainer: VisualElement,
    ScrollTo: (_child: VisualElement) -> void,
    ScrollToElement: (_element: VisualElement, _animationDuration: number) -> void,
    ScrollToOffset: (_offset: number, _animationDuration: number) -> void,
    ScrollToEnd: (_animationDuration: number) -> void,
    ScrollToBeginning: (_animationDuration: number) -> void,
    SetValueWithoutNotify: (_newValue: number) -> void,
    AdjustScrollOffsetForNewContent: () -> void,
    AdjustScrollOffset: (_delta: number) -> void,
    CancelAnimation: () -> void,

}

-- UIScrollViewType
type UIScrollViewType =
{

}

if not _G.UIScrollView then
	local UIScrollViewType_instance : UIScrollViewType = { }
	_G.UIScrollView = UIScrollViewType_instance;
end
