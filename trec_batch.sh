#!/bin/bash
for model in VSM BM25 LM
do
	export model=$model
	for measure in map ndcg bpref set_F.0.5
	do
		
		export measure=$measure
		export m=$measure
		if [ $measure == set_F.0.5 ]
		then
			export m=f
		fi
		/Users/ruhansa/Desktop/grading/src/trec.sh >> /Users/ruhansa/Google\ Drive/$model"_"$m.csv
	done
done