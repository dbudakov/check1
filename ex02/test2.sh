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


res="./a.out a"
exp="a\n"
$program a > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi

res="./a.out a b"
exp="b\na\n"
$program a b > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi

res="./a.out asdf beta char"
exp="char\nbeta\nasdf\n"
$program asdf beta char > ${file}
echo -ne "${exp}" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi

res="./a.out asdf beta char"
exp="test\nlol hi\n"
$program 'lol hi' test > ${file}
echo -ne "test\nlol hi\n" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi


res="./a.out '' !"
exp="!\n\n"
$program '' ! > ${file}
echo -ne "!\n\n" > ${test}
printf "%s == %s --> " "${res}" "'${exp}'"
if diff ${file} ${test} >>/dev/null ;then echo 1; else echo 2;fi
