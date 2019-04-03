#!/usr/bin/perl -w

@arr = ();

$i = 1;

for (0 .. 9) {
	print "Enter array element $i :";
	$num = <STDIN>;
	chomp $num;
	push @arr, $num;
	$i += 1;
}

print "\n\n1st element is $arr[0]\n";

print "Last element deleted\n";
pop(@arr);

print "Enter new element :";
$num = <STDIN>;
push(@arr, $num);

$lar = $arr[0];
foreach $a (@arr)
{
      if ($a > $lar)
	{
		$lar = $a;
	}
}
print "Largest element is $lar\n";
