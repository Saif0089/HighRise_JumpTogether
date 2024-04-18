--!AddComponentMenu("")

-- LuaScript
type LuaScript =
{
    propertyCount: number,
    runsOnServer: boolean,
    runsOnClient: boolean,
    runsOnClientAndServer: boolean,
    fullName: string,

}

-- LuaScriptType
type LuaScriptType =
{

}

if not _G.LuaScript then
	local LuaScriptType_instance : LuaScriptType = { }
	_G.LuaScript = LuaScriptType_instance;
end
