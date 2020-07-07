
### Debugging shaders in Visual Studio

- [Debugging shaders in Visual Studio](https://forum.unity.com/threads/debugging-shaders-in-visual-studio.322186/)
- [Debugging DirectX 11/12 shaders with Visual Studio](https://docs.unity3d.com/Manual/SL-DebuggingD3D11ShadersWithVS.html?_ga=2.103414080.1717259664.1574045032-389507767.1574045032)
- [Add or Remove Packages Offline Using DISM](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism)
- [Win10系统可选功能图形工具安装失败错误0x800F081F解决方法](http://www.doudouxitong.net/guzhang/win10guzhang/2016/0108/10938.html)

- [Unity3D研究院之获取BoxCollider八个点的世界坐标](https://www.xuanyusong.com/archives/4222)

```c
//下面4个点
vertices[0] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(boxcollider.size.x, -boxcollider.size.y, boxcollider.size.z) * 0.5f);
vertices[1] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(-boxcollider.size.x, -boxcollider.size.y, boxcollider.size.z) * 0.5f);
vertices[2] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(-boxcollider.size.x, -boxcollider.size.y, -boxcollider.size.z) * 0.5f);
vertices[3] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(boxcollider.size.x, -boxcollider.size.y, -boxcollider.size.z) * 0.5f);
//上面4个点
vertices[4] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(boxcollider.size.x, boxcollider.size.y, boxcollider.size.z) * 0.5f);
vertices[5] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(-boxcollider.size.x, boxcollider.size.y, boxcollider.size.z) * 0.5f);
vertices[6] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(-boxcollider.size.x, boxcollider.size.y, -boxcollider.size.z) * 0.5f);
vertices[7] = boxcollider.transform.TransformPoint(boxcollider.center + new Vector3(boxcollider.size.x, boxcollider.size.y, -boxcollider.size.z) * 0.5f);
```
