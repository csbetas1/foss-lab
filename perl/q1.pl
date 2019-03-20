#!/usr/bin/perl -w

$args = @ARGV;

if ($args != 2) 
{
	print "Invalid no: of arguments!\n";
	exit;
} 
else 
{
	$filename = "$ARGV[0].txt";
	
	if (!(-f $filename)) {
		print "File doesn't exist!";
		exit;
	}
	else {
		print "File found!";
		open ($fh, "+<".$filename);

		while ( $line = <$fh>) {
		print "$line";
		if ($line eq $ARGV[1]."\n"){
		print "Name already exists!";
		exit;
		}
		}
		else {
		print $fh "\n$ARGV[1]";
		print "\nName written into file!";
		}
		
	}
}




