/*

    Copyright (c) #YEAR# Pocketz World. All rights reserved.

    This is a generated file, do not edit!

    Generated by com.pz.studio
*/

using UnityEngine;
using Highrise.Client;

namespace Highrise.Lua.Generated
{
    [AddComponentMenu("Lua/Button")]
    [LuaBehaviourScript(_luaScriptAssetGuid)]
    public class Button : LuaBehaviourThunk
    {
        const string _luaScriptAssetGuid = "cc1d797e769f89a45b4a37e1dcf95e0c";
        public override string ScriptGUID => _luaScriptAssetGuid;

        [SerializeField] private UnityEngine.GameObject m_TransparentObject;
        [SerializeField] private UnityEngine.GameObject m_OpaqueObject;
        [SerializeField] private System.Double m_reset_time;
        [SerializeField] private System.Double m_TimerCooldownCurrent;
        [SerializeField] private System.Double m_TimerCoolDownTotal;
        [SerializeField] private System.Boolean m_startTimer;

        protected override void CopyToProperties()
        {
            if(_script == null)
                return;

            if(_properties == null || _properties.Length != 6)
                _properties = new SerializedPropertyValue[6];                


            _properties[0] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(0),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.GameObject), m_TransparentObject)
            };

            _properties[1] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(1),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(UnityEngine.GameObject), m_OpaqueObject)
            };

            _properties[2] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(2),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_reset_time)
            };

            _properties[3] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(3),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_TimerCooldownCurrent)
            };

            _properties[4] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(4),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Double), m_TimerCoolDownTotal)
            };

            _properties[5] = new SerializedPropertyValue()
            {
                Property = _script.GetPropertyAt(5),
                Value = Internal.LuaGlue.CreatePropertyValue(typeof(System.Boolean), m_startTimer)
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
                if (properties[index].Value?.RawValue is UnityEngine.GameObject value)
                    m_TransparentObject = value;
            }

            var property1 = _script.GetPropertyAt(1);
            if ((index = FindPropertyIndex(properties, property1.name, property1.TypeCode, 1)) > -1)
            {
                if (properties[index].Value?.RawValue is UnityEngine.GameObject value)
                    m_OpaqueObject = value;
            }

            var property2 = _script.GetPropertyAt(2);
            if ((index = FindPropertyIndex(properties, property2.name, property2.TypeCode, 2)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Double value)
                    m_reset_time = value;
            }

            var property3 = _script.GetPropertyAt(3);
            if ((index = FindPropertyIndex(properties, property3.name, property3.TypeCode, 3)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Double value)
                    m_TimerCooldownCurrent = value;
            }

            var property4 = _script.GetPropertyAt(4);
            if ((index = FindPropertyIndex(properties, property4.name, property4.TypeCode, 4)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Double value)
                    m_TimerCoolDownTotal = value;
            }

            var property5 = _script.GetPropertyAt(5);
            if ((index = FindPropertyIndex(properties, property5.name, property5.TypeCode, 5)) > -1)
            {
                if (properties[index].Value?.RawValue is System.Boolean value)
                    m_startTimer = value;
            }
        }
    }
}