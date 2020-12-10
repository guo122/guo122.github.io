
# Android Studio

clean
```
rm -Rf /Applications/Android\ Studio.app
rm -Rf ~/Library/Preferences/AndroidStudio*
rm ~/Library/Preferences/com.google.android.studio.plist
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*

rm -Rf ~/AndroidStudioProjects
rm -Rf ~/.gradle
rm -Rf ~/.android
rm -Rf ~/Library/Android*
```

## sdk-tools

```
sdkmanager "platforms;android-15"
sdkmanager "extras;android;m2repository"
```

## FAQ

版本问题
- macOS更新可能会变换开发文件路径，因此QT的版本要符合系统版本，否则编译时会找不到文件。
- jdk版本用的1.8

网络问题
- 无法自动下载gradle-3.2.0.pom，推测是https://dl.google.com/dl/android/maven2仓库无法访问所致，尝试在build.gradle中更换仓库源并未解决问题;
- 浏览器可以下载，qt内就不能自动下载;
- 在~/.gradle/gradle.properties中删除代理选项，下载进度走了一大步；
- 在下载\*.jar时交替开启/关闭代理，直到全部依赖包下载完成。



