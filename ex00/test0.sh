#!/bin/bash

cc ./ft*.c

res1="./a.out"
res=$(./a.out)
exp=./a.out
printf "%s == %s --> " "${res}" "${exp}"
if [[ $res == "${exp}" ]];then echo 1; else echo 2;fi

res1="./a.out a b c"
res=$(./a.out a b c)
exp=./a.out
printf "%s == %s --> " "${res1}" "${exp}"
if [[ $res == "${exp}" ]];then echo 1; else echo 0;fi
