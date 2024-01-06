#!/bin/bash

echo "enter the first number:"
read firstNumber

if [[ !  $firstNumber =~  ^[0-9]+$ ]]; then
        echo "the provided value is not a valid number"
        exit 2
fi

echo "enter the second number:"
read secondNumber

if [[ ! $secondNumber =~  ^[0-9]+$ ]];
then
        echo "the provided value is not a valid number"
        exit 2
fi


echo "enter the operator(+-*/):"
read operator

if [[ $operator != "+" && $operator != "-" && $operator != "*" && $operator != "/" ]]; then
	echo "operator is not valid"
	exit 2
fi


echo "$firstNumber $operator $secondNumber = $(( $firstNumber $operator $secondNumber ))"
