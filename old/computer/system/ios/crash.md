
# iOS Crash

## symbolicatecrash

```
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer
/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/PrivateFrameworks/DVTFoundation.framework/symbolicatecrash appName.crash appName.app.dSYM > appName.log
```

 uuid

```
dwarfdump --uuid appName.app/appName
dwarfdump --uuid appName.app.dSYM
```

## Reference

- [iOS Crash文件的解析（一）](https://www.cnblogs.com/smileEvday/p/Crash1.html)
- [分析iOS Crash文件：符号化iOS Crash文件的3种方法](http://www.cocoachina.com/industry/20140514/8418.html)
- [iOS应用崩溃日志分析](http://www.cocoachina.com/industry/20130725/6677.html)
- [获取iOS crash log](https://blog.csdn.net/ys410900345/article/details/26756589)
