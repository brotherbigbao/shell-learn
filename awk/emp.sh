#!/bin/bash
#awk只有字符串、数字两种类型, 数字可以做数学运算
#awk '$3 > 0 {print $1,$2*$3}' emp.data

#{print}可以省，{print}和{print 0}等价
#awk '$3 == 0' emp.data

#pattern可以省略
#awk '{print $1}' emp.data

#NR number row,表示行号 NF number Field表示例
#awk '{print NR,$1,$NF}' emp.data

#可以通过Pipe传给sort命令做排序
#awk '{print $3, $0}' emp.data | sort

#{print}可活力
#awk '$3 > 0' emp.data

#pattern可以省略
#awk '{print}' emp.data

#数学运算
#awk '$2 * $3 > 50 {printf("$%.2f for %s\n", $2 * $3, $1)}' emp.data

#字符串比较
#awk '$1 == "Dan"' emp.data

#正则匹配
#awk '$1 ~ /Mar./ {print}' emp.data

#&&, ||, !操作
#awk '$2 > 4 && $3 >0' emp.data
#awk '!($2 > 4 && $3 >0)' emp.data

#判断 If there are no errors, there's no output
#awk 'NF != 3 { print $0, "number of fields is not equal to 3" }' emp.data

#BEGIN and END
#The special pattern BEGIN matches before the first line of the first input ·file is read,
#and END matches after the last line of the last file has been processed. This program uses BEGIN to print a heading:
#awk 'BEGIN {print "Name Rate Hours"; print ""} {print}' emp.data

#You can put several statements on a single line if you separate them by semi·
#colons. Notice that print "" prints a blank line, quite different from just
#plain print, which prints the current input line.

#自定义变量 Awk variables used as numbers begin life with the value 0, so we didn't need to initialize emp.
#awk '$3 > 15 { emp = emp + 1 } END {print emp, "employees worked more than 15 hours"}' emp.data

#NR number row. To count the number of employees, we can use the built-in variable NR, which holds the number of
# lines read so far;its value at the end of all input is the total number of lines read.
#awk 'END { print NR, "employees" }' emp.data
#awk '{pay = pay + $2 * $3} END {print NR, "employees"; print "total pay is", pay; print "average pay is", pay/NR}' emp.data

#字符串类型变量
#awk '$2 > maxrate { maxrate = $2; maxemp = $1 } END {print "highest hourly rate:", maxrate, "for", maxemp}' emp.data

#字符串连接
#awk '{ names = names $1 " " } END {print names}' emp.data

#打印最后一行数据
awk 'END {print $0}' emp.data
awk '{ last = $0 } END { print last }' emp.data

#Built-in function
awk '{ print $1, length($1) }' emp.data