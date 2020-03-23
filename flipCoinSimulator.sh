#!/bin/bash -x
heads=0
tails=0
while [ $heads -le 21 ] && [ $tails -le 21 ]
do
i=0
$i=$((i+1))
for((i=0;i<100;i++))
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
done
echo "number of rounds $i"
