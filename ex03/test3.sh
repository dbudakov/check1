#!/bin/bash

program=./a.out
file=./file
test=./test

cc ./ft*.c

res="./a.out"
exp=""
$program > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi


res="./a.out asdf beta char"
exp="asdf\nbeta\nchar\n"
$program asdf beta char > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi


res="./a.out abcd abc ab a"
exp="a\nab\nabc\nabcd\n"
$program abcd abc ab a > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi

res="zxcv '' qwer 1234 asdf"
exp="\n1234\nasdf\nqwer\nzxcv\n"
$program zxcv '' qwer 1234 asdf> ${file}
echo -ne "\n1234\nasdf\nqwer\nzxcv\n" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi
