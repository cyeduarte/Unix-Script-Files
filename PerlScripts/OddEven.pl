
#Chritopher Eduarte
#!/usr/bin/env perl
#OddEven.pl
#Project 1 assignment 6 Perl 
#Determines whether the number is odd or even
use warnings; 
use strict;

print "Please enter the number:"; 
my $num = <STDIN>;
print "Num: $num";

if ($num%2 eq 0)
{
	print "Number is even.";
}
else 
{
	print "Number is odd";
}