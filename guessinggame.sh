#!/bin/bash


n1=$[($RANDOM % 10 +1)]
n3=1
echo -n "The files are between 1 and 10. Your guess:"

while read n2; 
do
if   [[ $n2 = $n1 ]]; then
break;  
else    
if [[ $n2 < $n1 ]]; 
then 
echo -n "Sorry, your guess is too low. New guess:"
elif [[ $n2 > $n1 ]]; 
then
echo -n "Sorry, your guess is too high. New guess:"
fi      
fi
n3=$((n3 + 1))

done
echo
echo "Felicidad! It took you $n3 times to get the right number of files."
