--!AddComponentMenu("")

-- IStyle
type IStyle =
{
    backgroundColor: StyleColor,
    borderBottomColor: StyleColor,
    borderBottomLeftRadius: StyleLength,
    borderBottomRightRadius: StyleLength,
    borderBottomWidth: StyleFloat,
    borderLeftColor: StyleColor,
    borderLeftWidth: StyleFloat,
    borderRightColor: StyleColor,
    borderRightWidth: StyleFloat,
    borderTopColor: StyleColor,
    borderTopLeftRadius: StyleLength,
    borderTopRightRadius: StyleLength,
    borderTopWidth: StyleFloat,
    bottom: StyleLength,
    color: StyleColor,
    flexBasis: StyleLength,
    flexGrow: StyleFloat,
    flexShrink: StyleFloat,
    fontSize: StyleLength,
    height: StyleLength,
    left: StyleLength,
    letterSpacing: StyleLength,
    marginBottom: StyleLength,
    marginLeft: StyleLength,
    marginRight: StyleLength,
    marginTop: StyleLength,
    maxHeight: StyleLength,
    maxWidth: StyleLength,
    minHeight: StyleLength,
    minWidth: StyleLength,
    opacity: StyleFloat,
    paddingBottom: StyleLength,
    paddingLeft: StyleLength,
    paddingRight: StyleLength,
    paddingTop: StyleLength,
    right: StyleLength,
    top: StyleLength,
    unityBackgroundImageTintColor: StyleColor,
    unityParagraphSpacing: StyleLength,
    unitySliceBottom: StyleInt,
    unitySliceLeft: StyleInt,
    unitySliceRight: StyleInt,
    unitySliceScale: StyleFloat,
    unitySliceTop: StyleInt,
    unityTextOutlineColor: StyleColor,
    unityTextOutlineWidth: StyleFloat,
    width: StyleLength,
    wordSpacing: StyleLength,

}

-- IStyleType
type IStyleType =
{

}

if not _G.IStyle then
	local IStyleType_instance : IStyleType = { }
	_G.IStyle = IStyleType_instance;
end
