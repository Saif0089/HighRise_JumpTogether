/*

    Copyright (c) 2024 Pocketz World. All rights reserved.

*/

#ifndef __HR_GAMECLIENT__CLIENT_H__
#define __HR_GAMECLIENT__CLIENT_H__

#include "hr_lua.h"
#include "hr_game.h"

#pragma pack(push, 8)

enum hr_SpecialMethod
{
    Awake = 0,
    OnEnable = 1,
    Start = 2,
    Update = 3,
    LateUpdate = 4,
    FixedUpdate = 5,
    OnDisable = 6,
    OnDestroy = 7,
    OnTriggerEnter = 8,
    OnTriggerStay = 9,
    OnTriggerExit = 10,
    OnCollisionEnter = 11,
    OnCollisionStay = 12,
    OnCollisionExit = 13,
    Count = OnCollisionExit + 1
};

#ifdef __cplusplus
extern "C"
{
#endif

    struct hr_Vector3;
    
    typedef struct
    {
        int a;
        int b;
        int c;
    } hr_ObjectId;

    typedef void (*hr_GameClient_HandleMessageFunction)(hr_Lua_State* state, const hr_Message* message);
    typedef void (*hr_IntValue_ChangedPtr)(hr_Lua_State* l, hr_Lua_UserData* userdata, int32_t newValue, int32_t oldValue);

    typedef struct
    {
        hr_GameClient_HandleMessageFunction handleMessageFunction;
    } hr_GameClientOptions;

    HR_API hr_Game* hr_GameClient_Create(hr_Lua_State* L, hr_Lua_UserData* userData, hr_GameClientOptions* options);

    /// <summary>
    /// Check player by session id
    /// </summary>
    HR_API const hr_Lua_UserData* hr_Player_Get(hr_Lua_State* L, hr_SessionId playerId);

    /// <summary>
    /// Push the game user data object onto the stack
    /// </summary>
    HR_API void hr_Game_Push(hr_Game* game, hr_Lua_State* L);

    /// <summary>
    /// Create a new event
    /// </summary>
    HR_API const hr_Lua_UserData* hr_Event_Create(hr_Lua_State* L, hr_Lua_UserData* userData, const char* name);

    /// <summary>
    /// Destroy an event created with hr_Event_Create
    /// </summary>
    HR_API void hr_Event_Destroy(const hr_Lua_UserData* event);

    /// <summary>
    /// Fire an event with the given number of arguments
    /// </summary>
    HR_API void hr_Event_Fire(const hr_Lua_UserData* event, hr_Lua_State* L, int nargs);

    /// <summary>
    /// Create a new behaviour
    /// </summary>
    HR_API const hr_Lua_UserData* hr_Behaviour_Create(hr_Lua_State* L, hr_NetworkId networkId, uint32_t sceneId, bool enabled);

    /// <summary>
    /// Destroy a behaviour created with hr_Behaviour_Create
    /// </summary>
    HR_API void hr_Behaviour_Destroy(const hr_Lua_UserData* behaviour);

    /// <summary>
    /// Returns true if the given behaviour has the given special method
    /// </summary>
    HR_API bool hr_Behaviour_HasSpecialMethod(const hr_Lua_UserData* behaviour, hr_SpecialMethod specialMethod);

    /// <summary>
    /// Call a special method on a behaviour
    /// </summary>
    HR_API void hr_Behaviour_CallSpecialMethod(hr_Lua_State* L, const hr_Lua_UserData* behaviour, hr_SpecialMethod specialMethod, int nargs);

    /// <summary>
    /// Create an int value attached to the given behaviour.  The returned value is a user data object and the
    /// caller will need to unref when it is no longer using it.
    /// </summary>
    HR_API const hr_Lua_UserData* hr_IntValue_Create(hr_Lua_State* l, const hr_Lua_UserData* behaviour, const char* name, int defaultValue, hr_IntValue_ChangedPtr changed);

#ifdef __cplusplus
}
#endif

#pragma pack(pop)

#endif // __HR_GAMECLIENT__CLIENT_H__

