--!AddComponentMenu("")

-- UISlider
type UISlider =
{
    lowValue: number,
    highValue: number,
    value: number,
    SetValueWithoutNotify: (_newValue: number) -> void,

}

-- UISliderType
type UISliderType =
{
    Instantiate: () -> UISlider,
    new: () -> UISlider,

}

if not _G.UISlider then
	local UISliderType_instance : UISliderType = { }
	_G.UISlider = UISliderType_instance;
end
