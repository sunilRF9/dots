#!/bin/sh
list=$( cd $HOME/books/ && ls -1 | sed -e 's/ /_/g'| dmenu -i)
if [ $list ]
then 
    $(zathura "$HOME/books/$list")
else
    echo "ciao"
fi
