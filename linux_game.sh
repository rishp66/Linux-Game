#!/bin/bash

#Welcome to the Linux Game!
echo "Hello, welcome to the Linux Quiz Game!"
echo "You will have only one life."

echo "Q1: input the command to get the number of files in your Desktop and redirect it to a file called numbers.txt in Downloads ensuring the original contents stay."
read user1
answer1="ls ~/Desktop | wc -l >> ~/Downloads/numbers.txt"

if [ "$user1" != "$answer1" ]; then
 echo "Congrats, you lost. Better luck next time!"
 exit
fi

echo "Nice job."
echo "Q2: input the command to get the output of a file '-' in your Downloads folder."
read user2
answer2="cd ~/Downloads | cat <- -"
if [ "$user2" != "$answer2" ]; then
 echo "Congrats, you lost. Better luck next time!"
 exit
fi

echo "You're still here hmmm..."
echo "Alright...let me step it up a level."
echo "Q3: create a complete function called 'move_delete' which moves everything from the Desktop, Downloads, and Pictures folder into a new directory called everything. Then, delete the directory named everything."
read user3
answer3="move_delete(){ mdkir everything mv ~/Desktop/* ~/everything mv ~/Downloads/* ~/everything mv ~/Pictures/* ~/everything rm -r everything }"
if [ "$user3" != "$answer3" ]; then
 echo "Congrats, you lost. Better luck next time!"
 exit
fi

echo "fine. Question 4."
echo "Q4: I want you to find a file starting from the root folder with the name of data.txt, however there are multiple data.txt files and this one is exactly 199 bytes and you may not be able to access it. Afterwards move it to the Desktop."
read user4
answer4 = "sudo find / -name 'data.txt' -size 199c | mv data.txt ~/Desktop/"
if [ "$user4" != "$answer4" ]; then
 echo "Congrats, you lost. Better luck next time!"
 exit
fi

echo "Final Question."
echo "create directories named dir1 to dir 500 and make 100 text files inside each named text1 to text500 in one command.""
read user5
answer5 = "mkdir dir{1..500} | touch ~/dir{1..500}/text{1..500}.txt"
if [ "$user5" != "$answer5" ]; then
 echo "Congrats, you lost. Better luck next time!"
 exit
fi


echo "YOU BEAT ME! Congrats!"
