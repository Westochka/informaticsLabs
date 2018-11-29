#!/bin/bash
wget http://factorized.net/crusoe.txt
echo "найдем слова, начинающиеся на z"
egrep -n "\bz" crusoe.txt > z.txt
echo 'все слова, начинающиеся на z в файле z.txt'
echo "найдем слова из 16 букв"
egrep -n "[[:alpha:]]{16}" crusoe.txt > 16.txt
echo 'все слова из 16 букв в файле 16.txt'
echo "найдем слова, начинающиеся на a и заканчивающиеся на c"
egrep -n "\sa[[:alpha:]]*c\b" crusoe.txt > ac.txt
echo 'все слова, начинающиеся на a и заканчивающиеся на c в файле ac.txt'
echo "найдем все слова, начинающиеся на ab, но у которых третья буква не о"
egrep -n "\sab[^o][[:alpha:]]*\b" crusoe.txt > abo.txt
echo 'все слова, начинающиеся на ab, но у которых третья буква не о в файле abo.txt'
wget http://factorized.net/patterns.txt
echo 'состоят только из цифр'
egrep -n "^[0-9]+$" patterns.txt > numbers.txt
echo 'строки, состоящие только из цифр в файле numbers.txt'
echo "состоят только из букв"
egrep -n "^[[:alpha:]]+$" patterns.txt > letters.txt
echo 'строки, состоящие только из букв в файле letters.txt'
echo "Найдем  все строки, которые могут являться валидными российскими автомобильными номерами"
egrep -n "^[ABEKMHOPCTYX][0-9]{3}[ABEKMNOPCTYX]{2}[0-9]{2,3}$" patterns.txt > cars.txt
echo 'все строки, которые могут являться валидными российскими автомобильными номерами в файле cars.txt'

