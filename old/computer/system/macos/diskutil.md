
# disk util

## 常用命令

```
diskutil listFilesystems
diskutil eraseVolume free mac disk0s1
```

## FAQ

You cannot manually format an existing APFS Container disk?
- diskutil apfs deleteContainer /dev/disk9

## 参考

- [OSX: diskutil命令-转换成自由空间并再对其分区](https://www.cnblogs.com/zhchoutai/p/6844591.html)
- [如何彻底移除你的Boot Camp分区？](https://sspai.com/post/43699)
- [GUID Partition Table](https://en.wikipedia.org/wiki/GUID_Partition_Table#Partition_type_GUIDs)
