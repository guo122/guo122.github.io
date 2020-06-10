
# Terminal

## Time

```sh
date +%s
date -r 1567890123
```

## spotlight
- 索引
`sudo mdutil -a -i on` 打开索引
`sudo mdutil -E /Volumes/Macintosh\ HD` 重建磁盘索引

- 禁用
`sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist`
- 恢复
`sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist`

- 删除图标
`cd /System/Library/CoreServices/`
`sudo mv Search.bundle/ Search2.bundle/`

- 恢复图标
`cd /System/Library/CoreServices/`
`sudo mv Search2.bundle/ Search.bundle/`

