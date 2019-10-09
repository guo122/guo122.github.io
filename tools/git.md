
# GIT 

## Clone

### fetch

```
git init
git fetch <url>
git checkout -b master FETCH_HEAD
```

### shallow

```
git clone --depth=1 <url>
git remote set-branches origin <branch>
git fetch --depth=1 origin <branch>
git checkout <branch>
```

## Branch

### something

```
git checkout -b <branch-name>
git checkout <branch-name>
git branch

git show-branch
git log --graph
```

### fork merge

```
git remote add nn <url>
git remote -v
git fetch nn master
git merge nn/master
git push origin master
```

### diff

```
git config --global merge.tool vimdiff
git config --global mergetool.prompt false
```

## Log

### undo commit

```
git reset --hard <id>
git push origin master --force
```

### fix last commit

```
git commit --amend
```

## Submodule

### add

```
git submodule add --depth=1 <url>
```

### init and update

```
git submoudle update --depth=1 --init --recursive
git submodule foreach --recursive git submodule update --init
```

### remove

```
git submodule deinit <name> -f
git rm --cached <name>
git commit -am "remove submodule"
```

## Config

### Color

```
git config color.ui true
git config --global color.ui true
```

### email and name

```
git config --global user.name "NAME"
git config --global user.email "EMAIL"
git submodule foreach --recursive git config --local user.name "NAME"
```

### password

```
git config --global credential.helper store
git config --global credential.helper cache
```

### ssh config

```
Host <name>
    Hostname github.com
    user git
    Identityfile ~/.ssh/id
```
