#!/bin/bash -x

shopt -s extglob

function checkEmailValidatiion
{
	if [[ $email =~ $emailPatternPart4  ]]
	then
   	echo "Valid"
	else
   	echo "Invalid"
	fi
}

echo "Enter the Email"
read email
emailPatternPart1="^[a-z]{1}[a-z0-9]{1,122}$"
emailPatternPart2="^@[a-z0-9]{1,310}$"
emailPatternPart3="^\.[a-z]{2,4}$"
emailPatternPart4="^([.|_|+|-]?[a-z0-9]+)$"
checkEmailValidatiion
