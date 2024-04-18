/*

    Copyright (c) 2024 Pocketz World. All rights reserved.

*/

#ifndef __HR_LUA_H__
#define __HR_LUA_H__

#include "hr_common.h"

#pragma pack(push, 8)

#ifdef __cplusplus
extern "C"
{
#endif

    typedef struct hr_Lua_State hr_Lua_State;

    struct hr_Lua_UserData;
    struct hr_Lua_Reg;
    struct hr_Lua_ByteCode;

    typedef int32_t (*hr_Lua_MethodPtr)(hr_Lua_State* state);
    typedef void (*hr_Lua_PrintPtr)(const char* str);
    typedef void (*hr_Lua_RequirePtr)(hr_Lua_State* state, const char* moduleName);
    typedef void (*hr_Lua_DestructorPtr)(const hr_Lua_UserData* userData);
    typedef void (*hr_Lua_ErrorFunctionPtr)(const char* msg, int line, int column);

    typedef uint64_t hr_Lua_TypeCode;

    enum class hr_Lua_TypeFlags : uint16_t
    {
        None = 0,
        Struct = 1 << 0,
    };

    struct hr_Lua_TypeInfo
    {
        const char* name;
        hr_Lua_TypeCode typeCode;
        hr_Lua_TypeFlags flags;
        uint16_t size;
        hr_Lua_TypeInfo* baseType;
        hr_Lua_Reg* staticMethods;
        hr_Lua_Reg* staticGetters;
        hr_Lua_Reg* staticSetters;
        hr_Lua_Reg* instanceMethods;
        hr_Lua_Reg* instanceGetters;
        hr_Lua_Reg* instanceSetters;
        hr_Lua_Reg* instanceMeta;
    };

    struct hr_Lua_ByteCode
    {
        uint8_t* code;
        int32_t size;
        const char* name;
    };

    struct hr_Lua_Struct
    {
        hr_Lua_TypeCode typeCode;
        hr_Lua_State* state;
    };

    struct hr_Lua_UserData
    {
        hr_Lua_TypeCode typeCode;
        hr_Lua_State* state;
        int32_t id;
        void* userData;
    };

    struct hr_Lua_Attribute
    {
        const char* name;
        const char* params;
    };

    struct hr_Lua_Property
    {
        const char* name;
        const char* type;
        int32_t valueOffsetBegin;
        int32_t valueOffsetEnd;
        int32_t attributeCount;
        hr_Lua_Attribute** attributes;

        union
        {
            double_t d;
            const char* s;
            bool b;
        } value;
    };

    struct hr_Lua_ParseResults
    {
        hr_Lua_Property** properties;
        int32_t propertyCount;

        hr_Lua_Attribute** attributes;
        int32_t attributeCount;

        const char** dependencies;
        int32_t dependencyCount;
    };

    struct hr_Lua_VMOptions
    {
        hr_Lua_PrintPtr print;
        hr_Lua_DestructorPtr destructor;
        hr_Lua_RequirePtr require;
    };

    HR_API hr_Lua_State* hr_Lua_CreateVM(hr_Lua_VMOptions* options);
    HR_API void hr_Lua_FreeVM(hr_Lua_State* state);

    HR_API int32_t hr_Lua_GetVmId(hr_Lua_State* L);
    HR_API int32_t hr_Lua_GetTop(hr_Lua_State* L);
    HR_API void hr_Lua_Call(hr_Lua_State* L, int32_t functionRef, int32_t nargs, int32_t nresults);
    HR_API void hr_Lua_Collect(hr_Lua_State* state);
    HR_API void hr_Lua_RegisterTypes(hr_Lua_State* state, hr_Lua_TypeInfo * types);
    HR_API void hr_Lua_Run(hr_Lua_State* L, const char* scriptName, hr_Lua_ByteCode * byteCode, int32_t returns);
    HR_API bool hr_Lua_RunThread(hr_Lua_State* L, hr_Lua_UserData * userDataI, const char* scriptName, hr_Lua_ByteCode * scriptCode, int32_t importCount, int32_t globalCount, int32_t returns);
    HR_API hr_Lua_ParseResults * hr_Lua_Parse(const char* code, hr_Lua_ErrorFunctionPtr error);
    HR_API void hr_Lua_FreeParseResults(hr_Lua_ParseResults * results);
    HR_API hr_Lua_ByteCode* hr_Lua_Compile(const char* code);
    HR_API hr_Lua_ByteCode* hr_Lua_CreateByteCode(const uint8_t* bytes, int32_t size, const char* name);
    HR_API void hr_Lua_FreeByteCode(hr_Lua_ByteCode * byteCode);
    HR_API void hr_Lua_RegisterGlobals(hr_Lua_State* L, int32_t globalCount);
    HR_API int32_t hr_Lua_CheckStack(hr_Lua_State* L, int32_t count);

    HR_API hr_Lua_TypeCode hr_Lua_GetTypeCode(const char* s);
    HR_API hr_Lua_Struct * hr_Lua_CreateStruct(hr_Lua_State* L, hr_Lua_TypeCode typeCode);
    HR_API const hr_Lua_UserData* hr_Lua_CreateUserData(hr_Lua_State* L, hr_Lua_TypeCode typeCode, hr_NetworkId networkId);

    HR_API void hr_Lua_NewTable(hr_Lua_State* L);
    HR_API void hr_Lua_SetTable(hr_Lua_State* L, int32_t index);
    HR_API void hr_Lua_RefUserData(hr_Lua_State* L, hr_Lua_UserData* userData);
    HR_API void hr_Lua_UnrefUserData(hr_Lua_State* L, hr_Lua_UserData* userData);
    HR_API int32_t hr_Lua_Ref(hr_Lua_State* L, int32_t index);
    HR_API void hr_Lua_Unref(hr_Lua_State* L, int32_t ref);
    HR_API void hr_Lua_PushRef(hr_Lua_State* L, int32_t ref);

    HR_API hr_Lua_TypeCode hr_Lua_ToTypeCode(hr_Lua_State* L, int32_t index);
    HR_API int32_t hr_Lua_ToInteger(hr_Lua_State* L, int32_t index);
    HR_API int32_t hr_Lua_ToFunctionRef(hr_Lua_State* L, int32_t index);
    HR_API double_t hr_Lua_ToNumber(hr_Lua_State* state, int32_t index);
    HR_API int32_t hr_Lua_ToBoolean(hr_Lua_State* state, int32_t index);
    HR_API const char* hr_Lua_ToString(hr_Lua_State* state, int32_t index);
    HR_API const hr_Lua_UserData * hr_Lua_ToUserData(hr_Lua_State* state, int32_t index);
    HR_API hr_Lua_Struct * hr_Lua_ToStruct(hr_Lua_State* state, int32_t index);
    HR_API uint64_t hr_Lua_ToUInt64(hr_Lua_State* L, int32_t index);
    HR_API uint32_t hr_Lua_ToUInt32(hr_Lua_State* L, int32_t index);

    HR_API void hr_Lua_PushString(hr_Lua_State* state, const char* value);
    HR_API void hr_Lua_PushNumber(hr_Lua_State* state, double_t value);
    HR_API void hr_Lua_PushInteger(hr_Lua_State* state, int32_t value);
    HR_API void hr_Lua_PushBoolean(hr_Lua_State* state, int32_t value);
    HR_API void hr_Lua_PushNil(hr_Lua_State* state);;
    HR_API bool hr_Lua_PushUserData(hr_Lua_State* L, hr_Lua_UserData * userDataInterop);

    HR_API void hr_Lua_Pop(hr_Lua_State* L, int32_t n);

    HR_API uint64_t hr_Lua_GetCallSignature(hr_Lua_State* L);
    HR_API uint64_t hr_Lua_GenerateCallSignature(int* args, int32_t nargs);

    HR_API uint32_t hr_Lua_GetOwnerId(hr_Lua_State* L, const hr_Lua_UserData* userDataI);

    HR_API const hr_Lua_UserData* hr_Lua_GetNetworkObject(hr_Lua_State* L, hr_NetworkId networkId);

#ifdef __cplusplus
}
#endif

#pragma pack(pop)

#endif // __HR_LUA_H__
