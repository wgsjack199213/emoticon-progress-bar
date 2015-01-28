#!/bin/bash

for ((i=0;$i<=20;i+=1)) do
    if [ $i -eq 0 ]; then
        printf "（~°口°）~┬─┬"
    else
        printf "（╯°口°）╯"
        printf "%${i}s┴─┴"
    fi 
        printf "%$((19-i))s"
    
    if [ ! $i -eq 20 ]; then
        printf "～(￣▽ ￣～)%6s%%\r" $((5*$i))
    else
        printf "(￣#)３￣)%3s100%%\n"
    fi
    
    sleep 0.1
    if [ $i -eq 0 ]; then
        sleep 0.3
    fi
done

echo Completion!

