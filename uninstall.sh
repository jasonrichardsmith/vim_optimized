#!/bin/bash

echo "Running uninstall script"
if [ -h ~/.vimrc ];then 
rm ~/.vimrc
else
echo "$link1 is not a symbolic link to the optimized vim not removing"
fi
if [ -h  ~/.vim ];then
rm ~/.vim
else
echo "$link2 is not a symbolic link to the optimized vim not removing"
fi
 
mv ~/.vimold/* ~/
rm -rf ~/.vimold
echo "Uninstall complete"

