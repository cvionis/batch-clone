#/usr/bin/sh

# A simple shell script allowing the user to pass the urls 
# of several remote repositories as arguments and clone them into the current working directory

if [ "$1" = "" ]
then
    echo "Usage: Enter the urls to clone into the current directory, each separated by a single space"

if [ "$1" = "" ]
then
    echo Usage: Enter the urls to clone into the current directory, each separated by a single space
    exit 1
fi

echo "Clone $# repositories into the current working directory? (Y/n)"

while :
do
    read CONFIRM
    if [ "$CONFIRM" = "Y" ] || [ "$CONFIRM" = "y" ]; then
        break
    elif [ "$CONFIRM" = "N" ] || [ "$CONFIRM" = "n" ]; then
        exit 0
    else
        echo "Choose a valid input (Y/n)"
    fi
done

for i in $@
do 
    git clone $i
done
