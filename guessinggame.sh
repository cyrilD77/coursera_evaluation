#!usr/bin/bash
#file: guessingguess.sh

number=`ls -a | wc -l`
response=""

function comparateur()

{
	if [[ $response > $number ]];
		then echo "It's to high, try again"
		elif [[ $response < $number ]];
			then 
			echo "It's to low, try again"
		
	fi
}

echo "How many files do you have in your current repertory?" 
	read response

if [ $number == $response ];
	then echo "congratulation, you found the good response!"
	else
		while [ $response != $number ];
			do comparateur
			echo "How many files do you have in your current repertory?" 
			read response
		
		done
		echo "Congratulation, you find the good response!"
	fi

