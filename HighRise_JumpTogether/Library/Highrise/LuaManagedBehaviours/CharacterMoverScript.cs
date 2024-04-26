/*

    Copyright (c) #YEAR# Pocketz World. All rights reserved.

    This is a generated file, do not edit!

    Generated by com.pz.studio
*/

using UnityEngine;
using Highrise.Client;

namespace Highrise.Lua.Generated
{
    [AddComponentMenu("Lua/Character Mover Script")]
    [LuaBehaviourScript(_luaScriptAssetGuid)]
    public class CharacterMoverScript : LuaBehaviourThunk
    {
        const string _luaScriptAssetGuid = "5d2120ce6bc542a498a15ee14692ff43";
        public override string ScriptGUID => _luaScriptAssetGuid;

        [SerializeField] private System.Double m_moveSpeed;
        [SerializeField] private System.Double m_rotationSpeed;
        [SerializeField] private UnityEngine.Transform m_way_point1;
        [SerializeField] private UnityEngine.Transform m_way_point2;
        [SerializeField] private UnityEngine.Transform m_way_point3;
        [SerializeField] private UnityEngine.Transform m_way_point4;
        [SerializeField] private System.Double m_waypoint_index;
        [SerializeField] private Highrise.Lua.LuaScript m_script;

        protected override void CopyToProperties()
        {
            if(_script == null)
                return;

            if(_properties == null || _properties.Length != 8)
                _properties = new SerializedPropertyValue[8];                


            _properties[0] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(0),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_moveSpeed)
            };

            _properties[1] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(1),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_rotationSpeed)
            };

            _properties[2] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(2),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.Transform), m_way_point1)
            };

            _properties[3] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(3),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.Transform), m_way_point2)
            };

            _properties[4] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(4),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.Transform), m_way_point3)
            };

            _properties[5] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(5),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.Transform), m_way_point4)
            };

            _properties[6] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(6),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_waypoint_index)
            };

            _properties[7] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(7),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(Highrise.Lua.LuaScript), m_script)
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
                if (properties[index].Value?.RawValue is System.Double value)
                    m_moveSpeed = value;
            }

            var property1 = _script.GetPropertyAt(1);
            if ((index = FindPropertyIndex(properties, property1.name, property1.TypeCode, 1)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Double value)
                    m_rotationSpeed = value;
            }

            var property2 = _script.GetPropertyAt(2);
            if ((index = FindPropertyIndex(properties, property2.name, property2.TypeCode, 2)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.Transform value)
                    m_way_point1 = value;
            }

            var property3 = _script.GetPropertyAt(3);
            if ((index = FindPropertyIndex(properties, property3.name, property3.TypeCode, 3)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.Transform value)
                    m_way_point2 = value;
            }

            var property4 = _script.GetPropertyAt(4);
            if ((index = FindPropertyIndex(properties, property4.name, property4.TypeCode, 4)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.Transform value)
                    m_way_point3 = value;
            }

            var property5 = _script.GetPropertyAt(5);
            if ((index = FindPropertyIndex(properties, property5.name, property5.TypeCode, 5)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.Transform value)
                    m_way_point4 = value;
            }

            var property6 = _script.GetPropertyAt(6);
            if ((index = FindPropertyIndex(properties, property6.name, property6.TypeCode, 6)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Double value)
                    m_waypoint_index = value;
            }

            var property7 = _script.GetPropertyAt(7);
            if ((index = FindPropertyIndex(properties, property7.name, property7.TypeCode, 7)) > -1)
            {
                if (properties[index].Value?.RawValue is Highrise.Lua.LuaScript value)
                    m_script = value;
            }
        }
    }
}