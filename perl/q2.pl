#!/usr/bin/perl 
use warnings;
if ($#ARGV + 1 != 2)
{
	print "Invalid number of arguments.\n";
	exit;
}

if (-e $ARGV[0])
{	
	print " $ARGV[0] opened:\n";
}
else 
{
	print "File not found\n";
	exit;
}

$flag = 1;

open(FILE, "+<".$ARGV[0]);

while (<FILE>)
{
	if ($_ eq $ARGV[1]."\n")
	{
		$flag = 0;
	}
}


if ($flag)
{
	print FILE $ARGV[1]."\n";
	print "$ARGV[1] added\n";
}
else 
{
	print "Name $ARGV[1] exists already \n";
}

close FILE
