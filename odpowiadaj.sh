#!/bin/bash
read nazwa

g++ "${nazwa}"/prog/"${nazwa}".cpp

for((i=0;i<$(ls "${nazwa}"/in | wc -l)+1 ;i++))
do
echo $i	
time ./a.out <"${nazwa}"/in/"${nazwa}""$i.in" > "${nazwa}"/out/"${nazwa}""${i}.out"
done
for((i=0;i<$(ls "${nazwa}"/in | wc -l)+1 ;i++))
do
echo $i	
valgrind ./a.out <"${nazwa}"/in/"${nazwa}""$i.in" > tmp.txt
done
rm tmp.txt
rm a.out
