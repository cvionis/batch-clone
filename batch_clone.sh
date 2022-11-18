#/usr/bin/sh

# A simple shell script allowing the user to pass the urls 
# of several remote repositories as arguments and clone them into the current working directory

if [ "$1" = "" ]
then
    echo Usage: Enter the urls to clone into the current directory, separated by a single space
fi


for i in $@
do 
    git clone $i
done
