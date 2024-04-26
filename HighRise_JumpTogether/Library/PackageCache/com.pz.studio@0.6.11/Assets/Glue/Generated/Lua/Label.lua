--!AddComponentMenu("")

-- Label
type Label =
{

}

-- LabelType
type LabelType =
{
    new: (_text: string) -> Label,

}

if not _G.Label then
	local LabelType_instance : LabelType = { }
	_G.Label = LabelType_instance;
end
