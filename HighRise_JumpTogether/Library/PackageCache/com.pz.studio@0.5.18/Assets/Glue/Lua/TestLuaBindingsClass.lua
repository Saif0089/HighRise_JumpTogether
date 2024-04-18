--!AddComponentMenu("")

-- TestLuaBindingsClass
type TestLuaBindingsClass =
{
    instanceProperty: number,
    staticProperty: number,

}

-- TestLuaBindingsClassType
type TestLuaBindingsClassType =
{
    new: () -> TestLuaBindingsClass,

}

if not _G.TestLuaBindingsClass then
	local TestLuaBindingsClassType_instance : TestLuaBindingsClassType = { }
	_G.TestLuaBindingsClass = TestLuaBindingsClassType_instance;
end
