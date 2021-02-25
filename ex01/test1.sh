#!/bin/bash

cc ./ft_*.c

./a.out > ./file
echo -ne '' > ./test
printf "%s == %s --> " "./a.out" "''"
if diff file test >>/dev/null;then echo 1; else echo 2;fi

res="./a.out a"
exp="a\n"
$res > ./file
echo -ne ${exp} > ./test
printf "%s == %s --> " "${res}" "'${exp}'"
if diff file test >>/dev/null ;then echo 1; else echo 2;fi

res="./a.out b a"
exp="b\na\n"
$res > ./file
echo -ne ${exp} > ./test
printf "%s == %s --> " "${res}" "'${exp}'"
if diff file test >>/dev/null ;then echo 1; else echo 2;fi


res="./a.out asdf beta char"
exp="asdf\nbeta\nchar\n"
$res > ./file
echo -ne ${exp} > ./test
printf "%s == %s --> " "${res}" "'${exp}'"
if diff file test >>/dev/null ;then echo 1; else echo 2;fi

res="./a.out 'hello world'"
exp="hello world\n!"
./a.out 'hello world' ! >./file
echo -ne "${exp}\n" > ./test
printf "%s == %s --> " "${res}" "'${exp}'"
if diff file test >>/dev/null ;then echo 1; else echo 2;fi


res="./a.out '' lol"
exp="\nlol\n"
./a.out '' lol >./file
echo -ne "${exp}" > ./test
printf "%s == %s --> " "${res}" "'${exp}'"
if diff file test >>/dev/null ;then echo 1; else echo 2;fi
