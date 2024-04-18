--!AddComponentMenu("")

-- Object
type Object =
{
    name: string,
    GetInstanceID: () -> number,

}

-- ObjectType
type ObjectType =
{
    DontDestroyOnLoad: (_target: Object) -> void,
    FindObjectOfType: (_type: Type) -> Object,
    FindFirstObjectByType: (_type: Type) -> Object,
    FindAnyObjectByType: (_type: Type) -> Object,
    DestroyImmediate: (_obj: Object) -> void,
    Destroy: (_obj: Object) -> void,
    Instantiate: (_obj: Object) -> Object,

}

if not _G.Object then
	local ObjectType_instance : ObjectType = { }
	_G.Object = ObjectType_instance;
end
