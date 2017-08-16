#Chritopher Eduarte
#!/usr/bin/env perl
#GCD.pl
#Project 1 assignment 6 Perl Part 8
#Finds the GCD and lcm of two numbers
use warnings; 
use strict;

print "Enter num1"
my $num = <STDIN>

print "Enter num2"
my $num2 = <STDIN>

my a = $num * $num2

while ($num2 ne 0)
{
	my b =$num % $num2
	num1 = $num2
	num2 = $b
}

my lcd = $a / $num2

print "The GCD is $num2"
print "The lcd is $lcd"