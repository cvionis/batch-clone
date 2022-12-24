#!/bin/sh

# A shell script allowing the user to pass the urls of one or more remote 
# git repositories as arguments and clone them into the current working directory
if [ "$1" = "" ]
then
    echo "Usage: btclone repo1 repo2 ..."
    exit 1
fi

echo "Clone $# repositories into the current working directory? (Y/n)"

while :
do
    read input
    if [ "$input" = "Y" ] || [ "$input" = "y" ]; then
        break
    elif [ "$input" = "N" ] || [ "$input" = "n" ]; then
        exit 0
    else
        echo "Choose a valid input (Y/n)"
    fi
done

for i in $@
do 
    git clone $i
done

