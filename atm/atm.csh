#!/bin/csh
#Christopher Eduarte
#CS260 Projecet 2 atm. csh
#Description: Transfer or withdraw money from either the checking or
#             savings account depending on the option selected.

@ count = 1
@ checkBalance = 1000
@ saveBalance = 1000

echo "****Welcome to Cal Poly's ATM****"
echo
echo "Please enter your PIN:"
set pin = $<

while (( $pin != 111 )) 
   echo "Wrong PIN number please try again" 
   set pin = $<
   
   @ count = $count + 1
   if (( $count == 3 )) then
      echo "Too many wrong Pin"
      exit 1
   endif
   echo
   clear
end 

set option = 0

while (( $option != 6 ))
   echo "***Welcome to Cal POly's ATM System***"
   echo
   echo "(1) Transfer from Checking account to saving account"
   echo "(2) Transfer from savings account to checking account"
   echo "(3) Savings account balance"
   echo "(4) checking account balance"
   echo "(5) Withdraw Case from either account"
   echo "(6) Exit"
   set option = $<

   switch ($option)
        case 1:
	   echo "Checking Account Balance"
	   echo "How much would you like to transfer"
	   set transfer = $<
	   if (( $transfer < $checkBalance )) then
	      @ checkBalance = $checkBalance - $transfer
	      @ saveBalance = $saveBalance + $transfer
	   else
	      echo "Transaction not completed"
	      echo "balance is $checkBalance"
	   endif
	breaksw
	case 2:
	   echo "Saving Account balance"  
	   echo "How much would you like to transfer"
	   set transfer = $<

	   if (( $transfer < $checkBalance )) then
	      @ saveBalance = $saveBalance - $transfer
	      @ checkBalance = $checkBalance + $transfer    
	   else
	      echo "Transaction not completed"
	      echo "balance is $saveBalance"
          endif
	breaksw
	case 3:
	   echo "Saving account balance is $saveBalance"
	breaksw
	case 4:
	   echo "Checking account balance is $checkBalance"
	breaksw
	case 5:
	   echo "Which account would you like to withdraw from:"
	   echo "1)Check"
	   echo "2) saving"
	   set account =  $<
           switch ($account)
	       case 1:
	           echo "Checking Account"
	           echo "How much would you like to withdraw"
	           set withdraw = $<
		   @ checkBalance = $checkBalance - $withdraw
	       breaksw
	       case 2:
	           echo "Saving Account"
	           echo "How much would you like to withdraw"
		   set withdraw = $<
		   @ saveBalance = $saveBalance - $withdraw
	       breaksw
	       default:
	            echo "Wrong Selection"
		    echo
	       breaksw
	   endsw
	breaksw
	case 6: 
	        echo "Thank you for using ATM system"
	        break
	breaksw 
	default:
	     echo "Invalid option. Please choose again."
	breaksw
   endsw
   clear
end
