#Chritopher Eduarte
#!/usr/bin/env perl
#Color.pl
#Project 1 assignment 6 Perl Part 5
#Prints out a sentence depending on the color chosen
use warnings; 
use strict;
use Switch; 

print "Please choose a color";
my $color = <STDIN>
switch($color)
{
	case *bl || *Bl
	{
		print "The sky color is $color"
	}
	case red || yellow
	{
		print "The sun is sometimes this $color."
	}
	else 
	{
		print "The color is in not any category defined."
	}
}
