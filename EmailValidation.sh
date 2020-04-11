#!/bin/bash -x

shopt -s extglob

function checkEmailValidatiion
{
	if [[ $email =~ $emailPatternPart1  ]]
	then
   	echo "Valid"
	else
   	echo "Invalid"
	fi
}

echo "Enter the Email"
read email
emailPatternPart1="^[a-z]{1}[a-z0-9]{1,254}$"
checkEmailValidatiion
