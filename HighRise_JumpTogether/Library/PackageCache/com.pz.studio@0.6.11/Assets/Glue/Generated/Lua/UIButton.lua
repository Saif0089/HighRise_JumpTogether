--!AddComponentMenu("")

-- UIButton
type UIButton =
{
    contentContainer: VisualElement,

}

-- UIButtonType
type UIButtonType =
{

}

if not _G.UIButton then
	local UIButtonType_instance : UIButtonType = { }
	_G.UIButton = UIButtonType_instance;
end
