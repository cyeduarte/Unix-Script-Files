#Chritopher Eduarte
#!/usr/bin/env perl
#Grade.pl
#Project 1 assignment 6 Perl Part 3
#Determines the grade of the input
use warnings; 
use strict;

print "Please enter your score";
my $score = <STDIN>
if ($score le 100 && $score ge 90)
{
	print "You got an A";
}
elsif ($score lt 90 && $score ge 80)
{
	print "You got a B";
}
elsif ($score lt 80 && $score ge 70)
{
	print "You got a C";
}
elsif ($score lt 70 && $score ge 60)
{
	print "You got a D";
}
elsif ($score < 60)
{
	print "You Failed";
}