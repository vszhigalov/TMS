#!/bin/bash
echo -e "The input:\n$1\t$3\t$5\n$2\t$4\t$6"
sum1=$(($1+$2))
sum2=$(($3+$4))
sum3=$(($5+$6))
avg1=$(($sum1/2))
avg2=$(($sum2/2))
avg3=$(($sum3/2))
echo -e "Result:\nsum\t$sum1\t$sum2\t$sum3\nave\t$avg1\t$avg2\t$avg3"

