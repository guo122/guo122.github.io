
```
#!/bin/bash

##########################################################
#				replace
##########################################################
#	-i
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
#	ls
alias ls="ls -G"
alias la="ls -aF"
alias ll="ls -lF"
alias lm="ls -alF"
#	grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
#	vim
alias vi="vim"
alias vii="vim"
#	.bash_profile
alias vipro="vim ~/.bash_profile"
alias viproo="vim ~/.bash_custom"
alias soupro="source ~/.bash_profile"
alias souproo="source ~/.bash_custom"

##########################################################
#				workspace
##########################################################
#	cd
alias cdd="cd ~/Documents"
alias cdc="cd ~/Documents/Coding"
alias cdo="cd ~/Downloads"
alias cdg="cdc;cd guo"

##########################################################
#               path
##########################################################
source ~/.bash_tools
source ~/.bash_custom
#	home
export PATH=${PATH}:${HOME}/bin
#	adb
export PATH=${PATH}:/Users/john/android/sdk/platform-tools
export PATH=${PATH}:/Users/john/android/sdk/tools

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
#export CLASS_PATH="$JAVA_HOME/lib"
#export ANDROID_NDK_ROOT="/Users/john/android/android-ndk-r18b"
#export PATH="${PATH}:$JAVA_HOME/bin"
#	mysql
export PATH=${PATH}:/usr/local/mysql/bin
#	nasm
export PATH=/Users/john/bin/nasm:${PATH}

##########################################################
#				others
##########################################################
#	LANG
export LANG=en_US.UTF-8

##########################################################
#               tools
##########################################################
alias wkjj="wakeonlan xx:xx:xx:xx:xx:xx"

alias alrand="date "+%a%b%c%d%sasdfasfdsdf"|md5|tr 'a-z' 'A-Z';date|md5|tr 'a-z' 'A-Z'|pbcopy"

##########################################################
#               script
##########################################################

##########################################################
#               GIT
##########################################################
_get_current_branch(){
    git_branch=`ggitGetCurrentBranch`
}

#PROMPT_COMMAND="_get_current_branch; $PROMPT_COMMAND"
#PS1="\h:\W\[\033[0;36m\]\$git_branch\[\033[0m\] \u\$ "

source ~/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-prompt.sh
  PROMPT_COMMAND="__git_ps1 \"\h:\W\" \" \u\$ \"; $PROMPT_COMMAND"
fi

alias ga="git add"
alias gif="git diff"
alias gco="git checkout "
alias gcoo="git checkout "
alias gs="git status"
alias gm="git commit -m "
alias gmp="git commit -m 'update'"
alias gl="git log"
alias gp="git pull"
alias gpp="git push origin master"

alias ggs="cdg; gitSS"
alias gskk="cdg;cd guo122.github.io;git status"

##########################################################
#               Complete
##########################################################
#complete -f -X "!*.zip" git
#complete -o default -o nospace -F _git_add ga

complete -o bashdefault -o default -o nospace -F ___git_ga ga
complete -o bashdefault -o default -o nospace -F ___git_ga gif 
complete -o bashdefault -o default -o nospace -F ___git_ga gco 
complete -o bashdefault -o default -o nospace -F ___git_gco gcoo
complete -o bashdefault -o default -o nospace -F ___git_gs gs
complete -o bashdefault -o default -o nospace -F ___git_gl gl
complete -o bashdefault -o default -o nospace -F ___git_gp gp
complete -o bashdefault -o default -o nospace -F ___git_ga vii 
```
