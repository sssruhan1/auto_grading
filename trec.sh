#!/bin/bash
export DIR=/Users/ruhansa/Desktop/grading/untar
export trec=/Users/ruhansa/Desktop/cse535_Proj_partb/trec_eval.9.0/trec_eval
for d in $DIR/*
do
	export groupname=${d##*/}
	cd $d
	if [ -d $d/$model ];
	then
		export score=$groupname
		for qid in $(seq 1 10)
		do 
			export qrel=/Users/ruhansa/Desktop/cse535_Proj_partb/ground_truth/test_qrels/test_ground_truth_$qid.txt
			if [ -f $d/$model/*$qid.txt ];
			then
				export result=$d/$model/*$qid.txt
				export line="$($trec -q -c -M1000 -m $measure $qrel $result)"
				export score=$score",""$(echo $line | grep -oE "[^\ ]+$")"
			fi
		done
		echo $score
	fi
done
