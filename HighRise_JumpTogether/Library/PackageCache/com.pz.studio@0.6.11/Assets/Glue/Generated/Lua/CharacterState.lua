--!AddComponentMenu("")

_G.CharacterState = {
    None = 0,
    Custom = 1,
    Emote = 2,
    Idle = 3,
    Walking = 4,
    Running = 5,

}

setmetatable(_G.CharacterState, { __index = _G.CharacterState, __newindex = function() error("Cannot modify CharacterState") end})