#!/bin/bash
read nazwa
read ilosc
g++ "${nazwa}"/main.cpp
for((i=1;i< $ilosc;i++))
do
	echo ${i}
	./a.out > "${nazwa}"/in/"${nazwa}""${i}.in"
	sleep 0.1s
done
ls -al "${nazwa}"/in
rm a.out
