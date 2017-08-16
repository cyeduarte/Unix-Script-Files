#!/bin/bash
#Christopher Eduarte
#Project 2 atm.bash  Comparing Shells bash program
#Project transers or withraws money from either the checking account
#or savings account depending on the option selected.

checking=1000
saving=1000

function CheckToSave()
{
     echo "You are transfering money from your checking account
           to your savings account"
     read transfer
     if (( $transfer < $checking )); then
        (( checking = $checking - $transfer ))
        (( saving = $saving + $transfer  ))
     else
        echo "Transfer cannot be complete"
	echo "The balance for checking is $checking"
     fi
     echo
}

function SaveToCheck()
{
    echo "You are transferring money from you savings account to
          your checking account."
    echo "How much would you like to transfer: "
    read transfer
    if [[ $transfer < $checkong ]]; then
       (( saving = $saving - $transfer ))
       (( checking = $checking + $transfer ))
    else
       echo "Transfer cannot be complete"
       echo "The balance for savings is $saving"
    fi
    echo
}

function checking()
{
   echo "Checking account balance is $checking"
   echo
}

function saving()
{
   echo "Saving account balance is $saving"
   echo
}

function Withdraw()
{
   echo "Which account would you like to withdraw from: "
   echo "Savings(choose S or s) acccount or Checking(choose 
         C or c) account"
   read account
   case $account in
      S|s) echo "How much would you like to withdraw"
           read withdraw
	   (( saving  = $saving - $withdraw ))
	   ;;
      C|c) echo "How much would you like to withdraw"
           read withdraw
           (( checking = $checking - $withdraw ))
	   ;;
	*) echo "wrong selectio"
	  ;;
   esac
   echo
}

echo "*** Welcome to Cal Poly's ATM ***"
echo "Please enter your PIN:"
read pin
echo

error=1
while [[ $pin != 111 ]];
do
     echo "Inccorrect pin. Please try again"
     read pin
     (( error++  ))

     if (( $error == 3 )); then 
        echo "Too many illegal PINS. Try again later."
	exit 1
     fi 
     echo
     clear
done

while [[ $option != 6 ]];
do 
   echo "***Welcome To Cal Poly's ATM System***"
   echo "(1) Transfer from saving account to checking account"
   echo "(2) Transfer from savings account to checking account"
   echo "(3) Savings account balance"
   echo "(4) Checking account balance"
   echo "(5) Withdraw Cash from either account"
   echo "(6) Exit"
   echo 
   echo "==> Please select option (1-6):" 
   read option

   case $option in
       1)CheckToSave
         ;;
       2)SaveToCheck
         ;;
       3)saving
         ;;
       4)checking
         ;;
       5)Withdraw
         ;;
       6)echo "Thank you for using the ATM system" 
         break;;
       *)echo "Wrong option Please try again" 
         ;;
   esac
   clear
done
