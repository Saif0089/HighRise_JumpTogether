--!AddComponentMenu("")

-- Behaviour
type Behaviour =
{
    enabled: boolean,
    isActiveAndEnabled: boolean,

}

-- BehaviourType
type BehaviourType =
{

}

if not _G.Behaviour then
	local BehaviourType_instance : BehaviourType = { }
	_G.Behaviour = BehaviourType_instance;
end
