#!/bin/bash
#Christopher Eduarte
#phonebook.bash
#Project 3 Bash
#Finds a specified name in a list and sorts it by alphabetical order


filename="datebook.txt"
declare -a name
index=0

#while read -r line
#do
#   name=$(echo $line | awk -F "[: ]" '{print $1}')
#   echo "Name read from file - $name"
#done < "$filename"

#function that sorts first or last name alphabetically
function AlphaOrder(){

	echo "Sorting names by alphabetical order"

	name[$index]=$(sort $filename | awk -F "[: ]" '{print $1}')
	
	echo "${name[@]}"
	echo
}

#function that sorts file contents in reverse order
function ReverseOrder(){
       sort -r $filename | awk -F "[: ]" '{print $1}'
}

#function that searches the contents of the file by last name
function Lastname(){
    bool=false
    echo "Find record by last name. Please enter last name:"
    read lastname
    echo "The lastname entered is $lastname"
    
    shopt -s nocasematch #if else is now case insensitive

    while read -r line #Reads file until last segment
    do
         if [[ $line =~ $lastname  ]]; then #Matches expression in file
	    echo $line #shows information if name is matched
	    bool=true
	 fi
         
    done < "$filename" 

    if [[ $bool == false ]]; then  #When match is not found
        echo "The name was not found"
    fi
}

#Finds phonebook contents by matching birthdays
function Birthday(){
     bool2=false
     echo "Please enter birthday: "
     read birthday   #initialize input
     echo "The birthday entered was $birthday" 
    
     regex=":$birthday/" #sets birthday to specific regular expression
     regex2="/$birthday:" #sets birthday to specific regular expression

     while read -r line #read file contents of datebook.txt
     do
         if [[ $line =~ $regex || $line =~ $regex2 ]]; then
	 	echo "$line"
		bool2=true
	 fi
     done < "$filename"

     if [[ $bool2 == false ]]; then #Match was not found
     	echo "The Birthday was not found in the database"
     fi
}

#Menu screen program that continues until option 5 is pressed
while [[ $option != 5 ]];
do
  echo "1) Records in alphabetical order."
  echo "2) Records in reverse alphabetical order." 
  echo "3) Search for last name in record."
  echo "4) Search record by birthday in a given year or month."
  echo "5) To quit the program\n" 
  echo
  
  read option

  case $option in #Options 1-4 call a specific function
     1)AlphaOrder;;
     2)ReverseOrder;;
     3)Lastname;;
     4)Birthday;;
     5)echo "You are quitting the program."
       break;;
     *)echo "Wrong option please choose again.";;
  esac 

done
