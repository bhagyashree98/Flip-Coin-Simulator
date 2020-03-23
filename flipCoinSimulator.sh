#!/bin/bash -x
read times
for((i=0;i<$times;i++))
do
r=$((RANDOM % 2)) 
if [ $r -eq 1 ]
then
	heads=$(($heads+1))
else 
	tails=$(($tails+1))
fi
done
 
if [ $heads -gt $tails ]
then
	echo "heads won $heads"
else
	echo "tails wins $tails"
fi
