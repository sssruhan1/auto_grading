w#!/bin/bash
export DIR=/Users/ruhansa/Desktop/untar
for d in $DIR/*
do
	export groupname=${d##*/}
	cd $d
	if [ -d $d/$groupname ];
	then
		echo "Error in "$groupname
		cp -r ./$groupname/* .
                rm -r ./$groupname
	fi
done
