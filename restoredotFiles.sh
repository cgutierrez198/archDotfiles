#!/bin/bash
declare -a arr=("i3/config" "compton.conf" "nvim/init.vim" "ranger/plugins/__init__.py" "ranger/devicons.py" "ranger/rifle.conf" "ranger/rc.conf" "youtube-dl/" )
declare -a arr2=(".Xresources" ".xinitrc" ".tmux.conf" ".bashrc" ".zshrc")

config=".config/"
destination="~/Repositories/archdotfiles"
for i in "${arr[@]}"
do
        
    if [[ $i = *"/"* ]] ;then
    mkdir -p ~/.config/${i%/*}
    
else
    touch $i
fi
    rsync  -arP  ~/Repositories/archdotfiles/$i ~/$config
done


for i in "${arr2[@]}"
do
    rsync  -aP  ~/Repositories/archdotfiles/$i ~/
done

