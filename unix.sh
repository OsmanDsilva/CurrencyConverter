#!/usr/bin/env bash
clear
echo "WELCOME TO CURRENCY CONVERTER"
echo "Press h for help"
read option
if [ $option = h ]
then
	sh help.sh
fi
echo "Enter currency from which you want to convert: (Ex.USD)"
read from
echo "Enter currency to which you want to convert to: (Ex.INR)"
read to 
echo "Enter the value which you want to convert:"
read value
echo "The amount in $to is:"
	curl -s "https://www.xe.com/currencyconverter/convert/?Amount=$value&From=$from&To=$to" | sed -n -n "s/.*<span class='uccResultAmount'>\([^<]*\)<\/span>.*/\1/p"
echo "A project by Mukunda,Osman and Samarth"

