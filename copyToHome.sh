#!/bin/bash

_kernal_name=`uname -s`

if [ $_kernal_name == "Darwin" ] ; then
	cp -f tools/bash_profile_darwin.md ~/.bash_profile_os
else
	cp -f tools/bash_profile_others.md ~/.bash_profile_os
fi

cp -f tools/bash_profile.md ~/.bash_profile
cp -f tools/bash_tools.md ~/.bash_tools
cp -f tools/vimrc.md ~/.vimrc

cp -f ../git/contrib/completion/git-completion.bash ./others/git-completion.bash
cp -f ../git/contrib/completion/git-prompt.sh ./others/git-prompt.sh

cp -f ./others/git-completion.bash ~/.git-completion.bash
cp -f ./others/git-prompt.sh ~/.git-prompt.sh

sed -i '' '1d' ~/.bash_profile
sed -i '' '1d' ~/.bash_profile
sed -i '' '$d' ~/.bash_profile

sed -i '' '1d' ~/.bash_profile_os
sed -i '' '1d' ~/.bash_profile_os
sed -i '' '$d' ~/.bash_profile_os

sed -i '' '1d' ~/.bash_tools
sed -i '' '1d' ~/.bash_tools
sed -i '' '$d' ~/.bash_tools

sed -i '' '1d' ~/.vimrc
sed -i '' '1d' ~/.vimrc
sed -i '' '$d' ~/.vimrc
