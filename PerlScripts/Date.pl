#Chritopher Eduarte
#!/usr/bin/env perl
#Date.pl
#Project 1 assignment 6 Perl Part 4
#Shows the output of each part of the date in different lines
use warnings; 
use strict;
use DateTime

my $date = DateTime->Now;
foreach $i ($date)
{
	print $i
}