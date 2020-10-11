#!bin/bash
#file: guessingguess.sh

number=`ls | wc -l`
response=0

comparateur()
{
	if [ $number == $response ];
		then echo "congratulation, you found the good response!"
		elif [[ $response -gt $number ]];
			then echo "it's to high, try again"
			else echo "it's to low, try again"
	fi
}

while [ $response != $number ];
	do echo "How many files do you have in your current repertory?" 
	read response
	comparateur
done


