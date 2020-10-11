#!bin/bash
#file: guessingguess.sh

number=`ls | wc -l`
response=5

echo "How many files do you have in your current repertory?" 


comparateur()
{
	if [ $number -eq $response ];
		then echo "congratulation, you found the good response\!"
		elif [[ $number -gt $reponse ]];
			then echo "it's to high, try again"
			else echo "it's to low, try again"
	fi
}

comparateur

