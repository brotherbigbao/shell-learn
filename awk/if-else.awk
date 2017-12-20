#!/usr/bin/awk -f
$2 > 4 {
    n = n+1
    pay = pay + $2 * $3
}
END {
    if (n > 0)
        print n, "employees, total pay is", py, "average pay is", pay/n
    else
        print "no employees are paid more than $6/hour"
}