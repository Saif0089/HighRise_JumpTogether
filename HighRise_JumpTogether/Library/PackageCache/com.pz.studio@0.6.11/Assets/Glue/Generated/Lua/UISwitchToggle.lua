--!AddComponentMenu("")

-- UISwitchToggle
type UISwitchToggle =
{
    value: boolean,
    SetValueWithoutNotify: (_newValue: boolean) -> void,

}

-- UISwitchToggleType
type UISwitchToggleType =
{
    new: () -> UISwitchToggle,

}

if not _G.UISwitchToggle then
	local UISwitchToggleType_instance : UISwitchToggleType = { }
	_G.UISwitchToggle = UISwitchToggleType_instance;
end
