#!/bin/bash
wget http://factorized.net/crusoe.txt
mkdir tmp
cd tmp
> 1.txt
> 2.txt
> 3.txt
> 4.cpp
> 5.txt
find -name "*.txt"
echo 'выведет все файлы в папке tmp  с расширением txt'
cd ..
grep 'Friday' crusoe.txt
cd tmp
echo 'Hello world' > 1.txt
echo 'Hello world' >> 1.txt
echo '>> означает, что текст будет записываться в конец файла'
echo '> означает, что уже имеющийся текст будет удаляться и в очищенный файл будет записываться текст'
ls > 2.txt
echo 'выведет в файл список файлов в текущей директории'
cd
cd ..
cd ..
find -name "*.txt" > home/westa/Рабочий\ стол/labs/labs/tmp/3.txt
echo 'westa - имя пользователя'
echo 'найти все файлы *.txt на всём диске'
find -name "*.txt" > home/westa/Рабочий\ стол/labs/labs/tmp/5.txt 2>/dev/null
echo 'вывод без мусора'


