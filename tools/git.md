
# GIT 

## Color

```
git config color.ui true
git config --global color.ui true
```

## email and name

```
git config --global user.name "NAME"
git config --global user.email "EMAIL"
git submodule foreach --recursive git config --local user.name "NAME"
```

## diff

```
git config --global merge.tool vimdiff
git config --global mergetool.prompt false
```

## 记住密码

- 永久

`git config --global credential.helper store`

- 临时

`git config --global credential.helper cache`

## 撤销commit

`git reset --hard [id]`
`git push origin master --force`

## 修改上一次提交

`git commit --amend`

## 浅拷贝

`git clone --depth=1 ...`

## 分支

```
git checkout -b <branch-name>
git checkout <branch-name>
git branch

git show-branch
git log --graph
```

## 子模块

```
git submoudle update --init --recursive
git submodule foreach --recursive git submodule update --init
```

```
git submodule deinit <name> -f
git rm --cached <name>
git commit -am "remove submodule"
```

## config

```
Host xxx
    Hostname github.com
    user git
    Identityfile ~/.ssh/id
```

## fork merge

```
git remote add nn https://github.com/name/repos
git remote -v
git fetch nn master
git merge nn/master
git push origin master
```

## clone

```
git init
git fetch https://....
git checkout -b master FETCH_HEAD
```
