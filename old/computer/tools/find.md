
# Find

## code line

```sh
find . -name "*.cpp" -or -name "*.h" | xargs cat | grep -v ^$ | wc -l
```


## ref

- [一行shell命令实现代码行数统计](https://blog.csdn.net/fanwenjieok/article/details/53321053)
