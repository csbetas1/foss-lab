#!/usr/bin/perl -w

$args = @ARGV;

if ($args != 2) 
{
    print "Invalid no: of arguments!\n";
} 
else 
{
	$filename = "$ARGV[0].txt";
	 if (-f $filename) {
	 print "File Exists!";
	}
	else {
	print "File DNE";
	}
}




