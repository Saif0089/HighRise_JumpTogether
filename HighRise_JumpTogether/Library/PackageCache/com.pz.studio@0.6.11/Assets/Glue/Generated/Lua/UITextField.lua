--!AddComponentMenu("")

-- UITextField
type UITextField =
{
    showPlaceholderOnEmptyFocus: boolean,
    inputLengthLimit: number,
    disableAutocorrection: boolean,
    showSearchIcon: boolean,
    showClearButton: boolean,
    enableMarkup: boolean,
    SetDecoratedValueWithoutNotify: (_value: string) -> void,
    SetValueWithoutNotify: (_newValue: string) -> void,
    Dispose: () -> void,
    MeasureTextHeight: () -> number,
    LeftTextMargin: () -> number,

}

-- UITextFieldType
type UITextFieldType =
{
    IsTextFieldFocused: () -> boolean,
    FocusedTextField: () -> UITextField,
    new: () -> UITextField,

}

if not _G.UITextField then
	local UITextFieldType_instance : UITextFieldType = { }
	_G.UITextField = UITextFieldType_instance;
end
