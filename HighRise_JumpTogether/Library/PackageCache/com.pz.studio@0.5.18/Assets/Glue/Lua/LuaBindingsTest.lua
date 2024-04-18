--!AddComponentMenu("")

-- LuaBindingsTest
type LuaBindingsTest =
{
    InstanceFunction: () -> void,

}

-- LuaBindingsTestType
type LuaBindingsTestType =
{
    new: () -> LuaBindingsTest,

}

if not _G.LuaBindingsTest then
	local LuaBindingsTestType_instance : LuaBindingsTestType = { }
	_G.LuaBindingsTest = LuaBindingsTestType_instance;
end
