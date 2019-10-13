#!/bin/bash

cp -f tools/bash_profile.md ~/.bash_profile
cp -f tools/bash_tools.md ~/.bash_tools
cp -f tools/vimrc.md ~/.vimrc

# todo
sed -i '1d' ~/.bash_profile
sed -i '1d' ~/.bash_profile
sed -i '$d' ~/.bash_profile

sed -i '1d' ~/.bash_tools
sed -i '1d' ~/.bash_tools
sed -i '$d' ~/.bash_tools

sed -i '1d' ~/.vimrc
sed -i '1d' ~/.vimrc
sed -i '$d' ~/.vimrc
