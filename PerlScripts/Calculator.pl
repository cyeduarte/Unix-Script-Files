#!/usr/bin/env perl
#Christopher Eduarte
#calculator.pl
#Project 1 assignment 6 Perl Part 10
#Squares the number that was inputted into the stream
use warnings; 
use strict;
use Switch;

echo "Choose two numbers"
my $num1 = <STDIN>
my $num2 = <STDIN>

if (@ARGV !=  2 ); 
{
   print "choose at least 2 arguements"
}

my $option = 'a'
while ($option ne 'e' && $option !ne'E')
{

   print "Add the numbers {enter a or A";
   print "Subtract the numbers {enter s or S}";
   print "Multiply the numbers {enter m or M}";
   print "Divide the numbers {enter d or D}";
   print "Exit {select e or E";

   my $option = <STDIN>
   print 

   switch($option)
    {   
      case 'a' || 'A':
	  {
	      my total = $num1 + $num2 
	  }
      case 's' || 'S':
	  {
 	     my total = $num1 - $num2
      }		 
      case 'm' || 'M':
      {	  
  	     my total = $num1 * $num2
      }		 
      case 'd' || 'D':
	  {
		  total = $num1 / $num2 
      }
      case 'e' || 'E': 
	  {
	     echo "Exiting the program"
	  }
      else
	  {
          echo "Entered wrong option";
	  }
	}
	
   print "\n";

   print "The number is now $total";
   print "Would you like to use the same number or different numbers";
   print "If yes, enter Y or y. If no, enter N or n. If you would like to 
         exit press e or E";
   my option2 = <STDIN>
   print

   #if else does not seem to accept e or n
   if  ($option2 eq 'Y' ||  $option2 eq 'y')
   {
      print "You are using the same numbers";
   }
   elsif ($option2 eq 'N' || $option eq 'n') 
   {
      print "Choose two new numbers:";
      my num1 = <STDIN>
      my num2 = <STDIN>
   }
   elsif ($option eq 'E' || $option eq 'e')
   {
      print "You are quitng the program";
   }
   else
   {
      print "Wrong selection";
   }
}
