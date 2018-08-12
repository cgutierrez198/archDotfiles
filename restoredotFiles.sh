#!/bin/bash
declare -a arr=("i3/config" "compton.conf" "nvim/init.vim" "ranger/plugins/devicons_linemode.py" "ranger/plugins/__init__.py" "ranger/devicons.py" "ranger/rifle.conf" "ranger/rc.conf" "youtube-dl/" )
declare -a arr2=(".Xresources" ".xinitrc" ".tmux.conf" ".bashrc" ".zshrc")

config=".config/"
destination="~/Repositories/archdotfiles"
for i in "${arr[@]}"
do
        
    rsync  -arP  ${i%/*} ~/$config
done


for i in "${arr2[@]}"
do
    rsync  -aP  $i ~/
done

