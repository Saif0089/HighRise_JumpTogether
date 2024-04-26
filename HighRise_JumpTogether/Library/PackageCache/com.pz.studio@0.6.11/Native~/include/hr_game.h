/*

    Copyright (c) 2024 Pocketz World. All rights reserved.

*/

#ifndef __HR_GAME_H__
#define __HR_GAME_H__

#include "hr_common.h"

#pragma pack(push, 8)

#ifdef __cplusplus
extern "C"
{
#endif

    typedef void (*hr_PrintFunction)(const char* message);

    typedef uint32_t hr_SessionId;

    typedef struct
    {
        uint32_t Size;
        const void* Data;
    } hr_Message;

    typedef void hr_Game;

    typedef struct
    {
        uint32_t Size;
        const char* Data;
    } hr_Buffer;

    /// <summary>
    /// Destroy a game instance.
    /// </summary>
    HR_API void hr_Game_Destroy(hr_Game* game);

    /// <summary>
    /// Run a single tick of the game.  This will process any pending messages and update the game state.
    /// </summary>
    HR_API void hr_Game_Update(hr_Game* game, float delta);

    /// <summary>
    /// Manually issue a fixed update of the game. 
    /// </summary>
    HR_API void hr_Game_FixedUpdate(hr_Game* game, float delta);

    /// <summary>
    /// Manually issue a late update of the game.
    /// </summary>
    HR_API void hr_Game_LateUpdate(hr_Game* game);

    /// <summary>
    /// Pop messages from the outbound game queue and returns the number of messages retrieved.  The 
    /// number of messages retrieved will not exceed the messageCount parameter.  All data returned in messages
    /// is owned by the game and will be freed by the game.  All data returned in messages will
    /// be considered valid until the next call to hr_GameClient_GetMessages or hr_GameClient_Destroy.
    /// </summary>
    HR_API uint32_t hr_Game_PopMessages(hr_Game* game, hr_Message* messages, uint32_t messageCount);

    /// <summary>
    /// Push a single message to the inbound game queue. Any data passed to the game via messages can safely be freed
    /// after a call to hr_GameClient_SendMessages.  Messages may or may not be processed immediately by the game, if not
    /// processed immediately they will be queued for processing at the next call to hr_GameClient_Tick.
    /// </summary>
    HR_API void hr_Game_PushMessage(hr_Game* game, hr_Message* message);

    /// <summary>
    /// Set the elapsed time since the game was started
    /// </summary>
    HR_API void hr_Game_SetTime(double_t time);

    /// <summary>
    /// Concatenate two player ids to create a unique channel id for whispering. The greater id is the higher 32 bits, the lower id is the lower 32 bits.
    /// </summary>
    HR_API uint64_t hr_Game_CreatePairedId(uint32_t player1, uint32_t player2);

    /// <summary>
    /// Free a buffer allocated by the game api
    /// </summary>
    HR_API void hr_Buffer_Free(hr_Buffer* buffer);

#ifdef __cplusplus
}
#endif

#pragma pack(pop)

#endif // __HR_GAME_H__
