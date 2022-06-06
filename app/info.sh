#!/bin/bash
echo "Content-type: text/html"
echo ""
n1=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[1]}' | awk '{split($0,array,"=")} END{print array[2]}'`
n2=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[2]}' | awk '{split($0,array,"=")} END{print array[2]}'`
sum=$(( $n1 + $n2 ))
 
echo "O resultado da soma: $sum"

