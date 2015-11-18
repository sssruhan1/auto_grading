w#!/bin/bash
export DIR=/Users/ruhansa/Desktop/grading
export CPDIR=/Users/ruhansa/Desktop/untar
for d in $DIR/*
do
	echo "processing file: "$d
	export filename=${d##*/}
	export extension=${filename##*.}
	export groupname=${filename%.*}
	echo $groupname
	mkdir $CPDIR/$groupname
	if [[ $extension == tar ]]
	then
		tar -xf $d -C $CPDIR/$groupname/
	fi
done
