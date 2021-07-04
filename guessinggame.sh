#!/usr/bin/bash

function guess {
	local f_num=$(ls | wc -l)
	echo "How many files are in this directory?"
	read num
	while [[ num -ne f_num ]]
	do
		if [[ num -gt f_num ]]
		then
			echo "Too high"
		elif [[ num -lt f_num ]]
		then
			echo "Too low"
		elif [[ num -eq f_num ]]
		then
			break
		fi
		echo "How many files are in this directory?"
		read num
	done

	echo "Congratulations, your guess is right."

}
guess
