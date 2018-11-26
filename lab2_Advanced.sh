#!/bin/bash
echo 'выясним, в какой директории находятся программы cat, less, grep и find с помощью which'
which cat
which less
which grep
which find
echo 'теперь то же самое только с whereis'
whereis cat
whereis less
whereis grep
whereis find
echo 'посмотрим, что выведет echo $PATH'
echo $PATH
mkdir direct
echo 'int main(){ int a = 10,sum=0; for (int i = 1; i <= a; i++){ sum += i; } printf("%d\n", sum); return 0; }' > file.c
gcc -std=c99 -include stdio.h file.c -o file.exe
./file.exe
cd direct
./file.exe
echo 'Не запускается, добавим в $PATH директорию с file.exe'
export PATH=$PATH:/home/westa/Рабочий\ стол/labs/labs
echo $PATH
echo 'теперь можно запускать file.exe из любой директории'
file.exe

