#!/bin/bash -e

clear

echo "----------------------------"
echo "...Wordpress Installation..."
echo "----------------------------"

while getopts d: option 
do 
case "${option}" in 
	d) DIRECTORY_NAME=${OPTARG};; 
esac 
done

wget -O wordpress.tar.gz http://wordpress.org/latest.tar.gz

if [ -n "$DIRECTORY_NAME" ]; then
	echo "----- Directory Created $DIRECTORY_NAME -----"
	mkdir $DIRECTORY_NAME
	mv wordpress.tar.gz ./$DIRECTORY_NAME
	cd $DIRECTORY_NAME
	tar -zxvf wordpress.tar.gz
	mv wordpress/* .
	rm -fr wordpress
else
	tar -zxvf wordpress.tar.gz
fi

rm wordpress.tar.gz








