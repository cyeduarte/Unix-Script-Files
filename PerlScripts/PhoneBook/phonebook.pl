#!/usr/bin/perl
#Christopher Eduarte
#phonebook.pl
#Project 3 Pearl 
#Description: Phonebook program that sorts the data alpabetically or in reverse order of all the names in the file #and searches data based on birthday and surname
use warnings;
use strict;

my $filename = "datebook.txt";
my $index = 0;
my @ary;

open (INPUT, "datebook.txt") or die "File not found";
	while (my $line = <INPUT>){
	    $ary[$index]= $line; #system("awk '{print \$1}' datebook.txt"); 
	    $index++;    
	}
close (INPUT);

#Prints the first name or last name in alpabetical order A-Z
sub AlphaOrder()
{
   my @sorted; #sorted array list
   @sorted = sort(@ary);
   print "Sorting names by alphabetical order\n";
   print "Which would you like to choose first(1) or last(2) name\n";
   my $name = <STDIN>;
   if ($name == 1)
   {           #awk takes in firstname
	system( "awk -F \"[: ]\" '{print \$1}' datebook.txt"); 
   }
   elsif ($name == 2)
   {           #awk takes in lastname
	sort $filename | system( "awk -F \"[: ]\" '{print \$2}' datebook.txt"); 
   }
   else
   {
   	print "Wrong option. Choose 1 or 2.";
   }
}

#Prints the first or last name in reverse alpabetical order Z-A
##Problems with sorting the data
sub Reverse()
{      
        my @reverse = reverse(@ary);
	print "Sorting names in reverse alphabetical order\n";
	print "Which would you like to choose first(1) or last name(2)\n";
	my $name = <STDIN>;
	if ($name == 1)
	{	#awk takes in first name 
		#sort -r $filename | system("awk -F: '{print $1}'");
	}
	elsif ($name == 2)
	{ #awk takes in  last name 
  	  #  sort -r $filename | system( "awk -F \"[: ]\" '{print \$1}' datebook.txt"); 

	}
	else
	{
		print "Wrong option. Select 1 or 2.\n";
	}
}

#Search the contents of a file by the last name 
sub LastName()
{   
    print "Please enter the surname you want to find\n";
    my $name = <STDIN>;
    chomp($name);
    open (INPUT, "datebook.txt") or  die "File not found"; 
	while (my $line = <INPUT>){
		if($line =~ /$name/i)#Search file for name
		{
			print $line;
		}

	}
    close (INPUT);
}

#Search the contents of the file by a person's birthday
sub Birthday()
{
    my $bool = '0';
    print "Please enter the birthday you want to find:\n";
    my $birthday = <STDIN>;
    chomp($birthday);	
    my $regex = qr{:$birthday/};
    my $regex2 = qr{/$birthday:};
	
    open (INPUT, "datebook.txt") or  die "File not found";
	while (my $line = <INPUT>){ 
		if($line =~ /$regex/ || $line =~ /$regex2/)
		{
			print $line;
		}

	}
    close (INPUT);
}

my $option = 0;

while ($option ne 5) #Menu stays util 5 is entered
{
      print "1)List record in alphabetical order.\n";
      print "2)List record in reverse alphabetical order.\n";
      print "3)Search for record by last name.\n";
      print "4)Search for record by birthday in a given year or month.\n";
      print "5)Quit the program\n";
	
      my $option = <STDIN>;
      print "\n";		
      #Case 1-4 calls subroutines
      
      if($option == 1) 
      {
   	    AlphaOrder();
      }
      elsif($option == 2)
      {
	    Reverse();
      }
      elsif($option == 3)
      {
	    LastName();              
      }
      elsif($option == 4) 
      {
	    Birthday();
      }
      elsif($option == 5)
      {
    	    print "You are quitting the program.\n";
	    exit;
      }
      else
      { 
	    print "Wrong Selection. Please try again\n";    
      }
}

