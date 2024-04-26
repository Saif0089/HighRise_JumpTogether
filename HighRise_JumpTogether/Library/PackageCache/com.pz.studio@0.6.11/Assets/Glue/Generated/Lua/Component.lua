--!AddComponentMenu("")

-- Component
type Component =
{
    transform: Transform,
    gameObject: GameObject,
    tag: string,
    GetComponent: () -> Component,
    GetComponentInChildren: (_t: Type, _includeInactive: boolean) -> Component,
    GetComponentInParent: (_t: Type, _includeInactive: boolean) -> Component,
    GetComponentIndex: () -> number,
    CompareTag: (_tag: string) -> boolean,

}

-- ComponentType
type ComponentType =
{

}

if not _G.Component then
	local ComponentType_instance : ComponentType = { }
	_G.Component = ComponentType_instance;
end
