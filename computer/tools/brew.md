
# Brew

```sh
brew --cache
cp <filename> <downloads/filename>
brew upgrade <filename>
```

```
cd `brew --repo`
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git
git remote get-url

cd Library/Taps/homebrew/homebrew-core
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git
git remote set-url origin https://github.com/Homebrew/homebrew-core.git

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
```

```
brew install <name>
brew uninstall <name>

brew search <name>
brew list <name>
brew info <name>

brew services start|stop|restart <name>
```