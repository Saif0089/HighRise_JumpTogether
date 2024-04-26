--!AddComponentMenu("")

-- GameObject
type GameObject =
{
    tag: string,
    transform: Transform,
    layer: number,
    activeSelf: boolean,
    activeInHierarchy: boolean,
    isStatic: boolean,
    sceneCullingMask: number,
    gameObject: GameObject,
    CompareTag: (_tag: string) -> boolean,
    GetComponent: (_type: Type) -> Component,
    GetComponents: (_type: Type) -> table,
    GetComponentsInChildren: (_type: Type) -> table,
    AddScript: (_script: LuaScript) -> Component,
    GetComponentInChildren: (_type: Type, _includeInactive: boolean) -> Component,
    GetComponentInParent: (_type: Type, _includeInactive: boolean) -> Component,
    AddComponent: (_componentType: Type) -> Component,
    GetComponentCount: () -> number,
    GetComponentAtIndex: (_index: number) -> Component,
    GetComponentIndex: (_component: Component) -> number,
    SetActive: (_value: boolean) -> void,

}

-- GameObjectType
type GameObjectType =
{
    Find: (_name: string) -> GameObject,
    FindGameObjectsWithTag: (_tag: string) -> table,
    FindGameObjectWithTag: (_tag: string) -> GameObject,
    FindWithTag: (_tag: string) -> GameObject,

}

if not _G.GameObject then
	local GameObjectType_instance : GameObjectType = { }
	_G.GameObject = GameObjectType_instance;
end
