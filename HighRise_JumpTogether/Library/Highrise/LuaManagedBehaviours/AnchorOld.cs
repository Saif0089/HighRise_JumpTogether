/*

    Copyright (c) #YEAR# Pocketz World. All rights reserved.

    This is a generated file, do not edit!

    Generated by com.pz.studio
*/

using UnityEngine;
using Highrise.Client;

namespace Highrise.Lua.Generated
{
    [AddComponentMenu("Lua/Anchor Old")]
    [LuaBehaviourScript(_luaScriptAssetGuid)]
    public class AnchorOld : LuaBehaviourThunk
    {
        const string _luaScriptAssetGuid = "37da264668ff1674b8a83b35b8b1b878";
        public override string ScriptGUID => _luaScriptAssetGuid;

        [SerializeField] private System.String m_animation;
        [SerializeField] private UnityEngine.Transform m_characterTransform;

        protected override void CopyToProperties()
        {
            if(_script == null)
                return;

            if(_properties == null || _properties.Length != 2)
                _properties = new SerializedPropertyValue[2];                


            _properties[0] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(0),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.String), m_animation)
            };

            _properties[1] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(1),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.Transform), m_characterTransform)
            };
        }

        protected override void CopyPropertiesFrom(SerializedPropertyValue[] properties)
        {
            if(_script == null)
            {
                Debug.LogError($"CopyPropertiesFrom failed, null script! Expected {ScriptGUID}");
                return;
            }

            int index;

            var property0 = _script.GetPropertyAt(0);
            if ((index = FindPropertyIndex(properties, property0.name, property0.TypeCode, 0)) > -1)
            {
                if (properties[index].Value?.RawValue is System.String value)
                    m_animation = value;
            }

            var property1 = _script.GetPropertyAt(1);
            if ((index = FindPropertyIndex(properties, property1.name, property1.TypeCode, 1)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.Transform value)
                    m_characterTransform = value;
            }
        }
    }
}