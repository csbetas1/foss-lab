#!/usr/bin/awk -f 
{ for (i= 1;i<=NF;i++) if ($i ~ /^[:0-9:]/) {s += $i ; c +=1} } END {print s/c}
