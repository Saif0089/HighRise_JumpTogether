--!AddComponentMenu("")

-- Character
type Character =
{
    destination: Vector3,
    isMoving: boolean,
    distanceToDestination: number,
    anchor: Anchor,
    isAnchored: boolean,
    usePathfinding: boolean,
    renderLayer: number,
    renderPosition: Vector3,
    renderRotation: Quaternion,
    renderScale: Vector3,
    player: Player,
    StateChanged: Event,
    MoveFinished: Event,
    AnimationEvent: Event,
    state: number,
    MoveWithinRangeOf: (_to: Vector3, _distance: number, _areaMask: number, _callback: LuaFunction) -> boolean,
    MoveTo: (_to: Vector3, _areaMask: number, _callback: LuaFunction) -> boolean,
    Teleport: (_to: Vector3, _callback: LuaFunction) -> boolean,
    SetIdle: () -> void,
    PlayEmote: (_emoteName: string, _loop: boolean, _callback: LuaFunction) -> void,
    TeleportToAnchor: (_anchor: Anchor, _callback: LuaFunction) -> boolean,
    MoveToAnchor: (_anchor: Anchor, _distance: number, _areaMask: number, _callback: LuaFunction) -> boolean,
    TweenRenderPosition: (_from: Vector3, _to: Vector3) -> Tween,
    TweenRenderPositionTo: (_to: Vector3) -> Tween,

}

-- CharacterType
type CharacterType =
{

}

if not _G.Character then
	local CharacterType_instance : CharacterType = { }
	_G.Character = CharacterType_instance;
end
