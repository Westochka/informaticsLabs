#!/bin/bash
wget http://factorized.net/crusoe.txt
echo 'Найти количество упоминаний слова “Friday” в большом текстовом файле.'
grep -o 'Friday' crusoe.txt | uniq -c
sed -i s/Friday/Saturday/g crusoe.txt
echo 'Заменили Friday на Saturday'
echo 'посмотрим осталось ли слово Friday'
grep -o 'Friday' crusoe.txt | uniq -c
echo 'ничего не вывелось - значит не осталось'
echo 'Подсчитать сумму чисел по столбцам'
echo '1 2
2 2
3 7' > numbers.txt
cat numbers.txt
echo 'результат:'
awk '{sum1+=$1; sum2+=$2} END {print sum1 FS sum2}' numbers.txt
echo 'Вывести строку, содержащую больше всего чисел.'
echo '1 300
2 3
10' > numbers.txt
cat numbers.txt
echo 'результат:'
awk 'BEGIN{max = " "; maxkol = 0}
{if(NF > maxkol){ maxkol = NF; max = $0 }}
END {print max}' numbers.txt
echo '200
1 1 1 1
10 10 10' > numbers.txt
echo 'новые значения'
cat numbers.txt
echo 'результат:'
awk 'BEGIN{max = " "; maxkol = 0}
{if(NF > maxkol){ maxkol = NF; max = $0 }}
END {print max}' numbers.txt

