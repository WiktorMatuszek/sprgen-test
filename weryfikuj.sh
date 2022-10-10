#!/bin/bash
read nazwa
$(g++ main.cpp)
for((i=1;i< $(ls in | wc -l)+1;i++))
do
	./a.out <in/"$nazwa""$i.in" >tmp.txt
	echo $i
	echo $(diff -b -Z tmp.txt out/"$nazwa""$i.out")
done
