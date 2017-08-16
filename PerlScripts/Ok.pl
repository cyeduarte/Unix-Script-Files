#Chritopher Eduarte
#!/usr/bin/env perl
#Ok.pl
#Project 1 assignment 6 Perl Part 2
#Asks the user if they are ok or not
use warnings; 
use strict;

my ok = 'A'
while ($ok ne 'Q' || $ok ne 'q')
{
	print "Are you ok"
	my $ok = <STDIN>
	if ($ok eq 'Y' || $ok eq 'y')
	{
		print "Glade to heart that";
	}
	else if ($ok eq 'N' || $ok eq 'n')
	{
		print "Sorry to hear that";
	}
	else if ($ok eq 'Q' || $ok eq 'q')
	{
		print "You are quitting the program";
	}
	else
	{
		print "Incorrect Option. Choose Again."
	}

}