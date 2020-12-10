
```c#
public class Agent : ScriptableObject
{
}

[CustomEditor(typeof())]

Agent agent = UnityEditor.AssetDatabase.LoadAssetAtPath<Agent>(path);

Agent agent = ScriptableObject.CreateInstance<Agent>();
UnityEditor.AssetDatabase.CreateAsset(agent, path);
UnityEditor.AssetDatabase.SaveAssets();
UnityEditor.AssetDatabase.Refresh();
```
