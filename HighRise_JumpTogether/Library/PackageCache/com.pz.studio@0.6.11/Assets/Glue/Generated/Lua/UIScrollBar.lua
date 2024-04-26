--!AddComponentMenu("")

-- UIScrollBar
type UIScrollBar =
{
    min: number,
    max: number,
    value: number,
    SetValueWithoutNotify: (_newValue: number) -> void,

}

-- UIScrollBarType
type UIScrollBarType =
{
    new: () -> UIScrollBar,

}

if not _G.UIScrollBar then
	local UIScrollBarType_instance : UIScrollBarType = { }
	_G.UIScrollBar = UIScrollBarType_instance;
end
