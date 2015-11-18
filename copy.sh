#!/bin/bash
export DIR=/submit/rohini/CSE435/
export CPDIR=/home/csgrad/ruhansa/ta/435/
for d in $DIR*
do
	echo "processing directory: "$d
	cd $d
	for sd in $d/*
	do
		export filename=${sd##*/}
		echo $filename
		if [[ $filename == assignment* ]] || [[ $filename == project1A* ]];
		then
			echo "skipping file: " $filename
			continue
		fi
		echo "copying file: " $sd
		cp $sd $CPDIR
	done
done
