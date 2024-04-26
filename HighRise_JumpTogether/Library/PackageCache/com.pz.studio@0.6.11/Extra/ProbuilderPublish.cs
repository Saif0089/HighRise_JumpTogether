/*

    Copyright (c) 2024 Pocketz World. All rights reserved.

*/

#if HR_PROBUILDER

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.ProBuilder;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.ProBuilder;
using UnityEngine.SceneManagement;
using Object = UnityEngine.Object;
using UEditorUtility = UnityEditor.EditorUtility;

namespace Highrise.Studio
{
    /// <summary>
    /// Remove Probuilder components at publish time.
    /// </summary>
    internal class ProbuilderPublish : StudioBundleBuilderPreProcessor
    {
        private const string ProbuilderMeshAssetPath = "Assets/HR_ProbuilderMeshAssets";

        private static void Log(string msg) => Console.WriteLine($"HR_STUDIO: {msg}");

        private static IEnumerable<T> FindAllInScenes<T>(IEnumerable<SceneAsset> filter) where T : Object
        {
            var scenes = filter == null || !filter.Any()
                ? AssetDatabase.FindAssets("t:scene", new[] { "Assets" }).Select(AssetDatabase.GUIDToAssetPath)
                : filter.Where(x => x != null).Select(AssetDatabase.GetAssetPath);

            foreach (var path in scenes)
            {
                var scene = default(Scene);

                try
                {
                    scene = EditorSceneManager.OpenScene(path, OpenSceneMode.Single);
                }
                catch(Exception e)
                {
                    Log($"probuilder stripping failed to open scene: {e}");
                }

                if (scene.path != path)
                    continue;

                foreach (var value in Resources.FindObjectsOfTypeAll<T>())
                    if (!UEditorUtility.IsPersistent(value))
                        yield return value;

                EditorSceneManager.SaveScene(scene);
            }
        }

        public override void BeforeBuildAssetBundles(IEnumerable<SceneAsset> scenes)
        {
            Directory.CreateDirectory(ProbuilderMeshAssetPath);

            foreach (var mesh in FindAllInScenes<ProBuilderMesh>(null))
            {
                if (PrefabUtility.IsPartOfPrefabInstance(mesh))
                {
                    var modifications = PrefabUtility.GetPropertyModifications(mesh);

                    // When a Probuilder mesh is modified we keep the in-scene mesh rather than
                    // linking it to the prefab asset.
                    if (modifications.Any(x => x.propertyPath == "m_VersionIndex" && x.target is ProBuilderMesh))
                    {
                        RemoveComponents(mesh.gameObject);
                    }
                    // If the ProbuilderMesh is not modified, we'll remove the "m_Mesh"
                    // overrides. This allows the changes to the prefab asset to be applied in the
                    // next step where we process prefabs.
                    else
                    {
                        var filtered = new List<PropertyModification>(modifications.Length);
                        foreach(var mod in modifications)
                            if(!(mod.propertyPath == "m_Mesh" && mod.target is ProBuilderMesh or MeshCollider or MeshFilter))
                                filtered.Add(mod);
                        PrefabUtility.SetPropertyModifications(mesh, filtered.ToArray());
                    }
                }
                else
                {
                    RemoveComponents(mesh.gameObject);
                }
            }

            foreach (var guid in AssetDatabase.FindAssets("t:prefab"))
            {
                var gameObject = AssetDatabase.LoadAssetAtPath<GameObject>(AssetDatabase.GUIDToAssetPath(guid));
                RemoveComponents(gameObject);
            }
        }

        private static readonly string[] ProbuilderComponentFilter = new[]
        {
            "UnityEngine.ProBuilder.Entity",
            "UnityEngine.ProBuilder.Shapes.ProBuilderShape",
            "UnityEngine.ProBuilder.BezierShape",
        };

        private static void RemoveComponents(GameObject gameObject)
        {
            if (!gameObject.TryGetComponent<ProBuilderMesh>(out var probuilderMeshComponent)
                || !gameObject.TryGetComponent<MeshFilter>(out var filter))
                return;

            // Probuilder mesh assets are not saved in prefabs, so we need to force that mesh into
            // existence before saving it.
            if (PrefabUtility.IsPartOfPrefabAsset(gameObject))
            {
                probuilderMeshComponent.ToMesh();
                probuilderMeshComponent.Refresh();
                EditorMeshUtility.Optimize(probuilderMeshComponent, true);
            }

            if(filter.sharedMesh == null)
                return;

            if (gameObject.TryGetComponent(out PolyShape polyShape))
                Object.DestroyImmediate(polyShape, true);

            for (int i = gameObject.GetComponentCount() - 1; i > -1; --i)
            {
                var component = gameObject.GetComponentAtIndex(i);
                var type = component?.GetType().FullName;
                if(!string.IsNullOrEmpty(type) && ProbuilderComponentFilter.Any(x=> type.Contains(x)))
                    Object.DestroyImmediate(component, true);
            }

            var mesh = filter.sharedMesh;

            if (string.IsNullOrEmpty(AssetDatabase.GetAssetPath(mesh)))
                AssetDatabase.CreateAsset(mesh,
                    AssetDatabase.GenerateUniqueAssetPath(
                        $"{ProbuilderMeshAssetPath}/{mesh.name}.asset"));
            else
                Log("Skipping mesh asset creation for {mesh.name} because it already " +
                          $"exists! {AssetDatabase.GetAssetPath(mesh)}");

            probuilderMeshComponent.preserveMeshAssetOnDestroy = true;

            Object.DestroyImmediate(probuilderMeshComponent, true);

            if (PrefabUtility.IsPartOfPrefabAsset(gameObject))
            {
                PrefabUtility.SavePrefabAsset(gameObject, out bool success);
                if (!success)
                    Log($"probuilder publish failed saving prefab asset: {gameObject}");
            }
            else
            {
                UEditorUtility.SetDirty(gameObject);
            }
        }
    }
}
#endif