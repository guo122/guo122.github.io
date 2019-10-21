
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

git pull --unshallow
```

## Branch

### add

```
git checkout -b <branch-name> [<remote-branch-name>]
git checkout <branch-name>
```

### remove

```
git branch -d <branch-name>
git push origin --delete <branch-name>
```

### view

```
git branch
git show-branch
git log --graph

git ls-remote
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

## Archive

### zip

```
git archive master -o a.zip
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

### shallow

```
git config -f .gitmodules submodule.<name>.shallow true
git submoudle update --[no-]recommend-shallow --init --recursive
```

[How to make shallow git submodules?](https://stackoverflow.com/questions/2144406/how-to-make-shallow-git-submodules)

## Config

### alias

```
git config --global alias.ggsubup 'submodule update --recommend-shallow --init --recursive'
git config --global alias.ffo 'config --local remote.origin.fetch +refs/heads/*:refs/remotes/origin/*'
```

```
git config --local alias.ffadd 'remote add fork_origin <url>'
git config --local alias.ffetch 'fetch fork_origin master'
git config --local alias.ffbranch 'checkout fork_master'
git config --local alias.ffmerge 'merge fork_origin/master'
git config --local alias.ffpush 'push origin fork_master'
```

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

### remote origin

```
git config --local remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
```

## Prompt

### show branch on Terminal

```
#show the current git branch
find_git_branch() {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head = ref:\ refs/heads/* ]]; then
                git_branch="(${head#*/*/})"
            elif [[ $head != '' ]]; then
                git_branch="((detached))"
            else
                git_branch="((unknow))"
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"
PS1="\h:\W\[\033[0;32m\]\$git_branch\[\033[0m\] \u\$ "
```

### git config

```
[user]
    name = guo122
    email = balanuard@163.com
[merge]
    tool = vimdiff
[mergetool]
    prompt = false
[alias]
    ggsubup = submodule update --recommend-shallow --init --recursive
    ffo = config --local remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
	ggcm = commit -m "update"
```

## Statistic

### git

```
git log --since=2018-01-01 --until=2019-07-10 | wc -l
git log --author="$(git config --get user.name)" --pretty=tformat: --numstat | gawk '{ add += $1 ; subs += $2 ; loc += $1 - $2 } END { printf "added lines: %s removed lines : %s total lines: %s\n",add,subs,loc }' -
git log --pretty='%aN' | sort | uniq -c | sort -k1 -n -r | head -n 20
git log --pretty='%aN' | sort -u | wc -l
```

[git log 统计 shell sort uniq](https://my.oschina.net/shunshun/blog/3060576)
