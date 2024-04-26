--!AddComponentMenu("")

-- UILabel
type UILabel =
{
    text: string,
    uppercase: boolean,
    Dispose: () -> void,
    SetPrelocalizedText: (_value: string, _skipRtlValidation: boolean) -> void,
    SetEmojiPrelocalizedText: (_value: string, _skipValidation: boolean) -> void,
    AdjustFontSize: () -> void,

}

-- UILabelType
type UILabelType =
{
    PreLocalized: (_text: string, _skipValidation: boolean, _skipRtlValidation: boolean) -> UILabel,
    EmojiPrelocalized: (_text: string, _skipValidation: boolean, _skipRtlValidation: boolean) -> UILabel,

}

if not _G.UILabel then
	local UILabelType_instance : UILabelType = { }
	_G.UILabel = UILabelType_instance;
end
