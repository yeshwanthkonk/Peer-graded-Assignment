#!/bin/bash
function guess
{
while [[ $val -ne 1 ]]
do
	echo "Say No of Files"
	read count
	a=$(ls -l|grep ^-|wc -l)
	if [[ $count -eq $a ]]
	then
		let val=val+1
		echo "congratulated"
	elif [[ $count -gt $a ]]
	then
		echo "Too high"
		echo "Guess Again"
	elif [[ $count -lt $a ]]
	then
		echo "Too low"
		echo "Guess Again"
	fi
done
}
val=0
guess
