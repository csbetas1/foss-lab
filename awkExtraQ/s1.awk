#!/usr/bin/awk -f 
{for (i = 1;i<=NF;i++)a[$i]++} END {for (i in a) if (a[i] > 1) print i}
