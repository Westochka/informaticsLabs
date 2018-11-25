#!/bin/bash
mkdir direct
cd direct
echo 'создание скрытого файла'
> .file.txt
ls
echo 'Ничего не вывелось с командой ls'
ls -a
echo 'Команда ls -a ищет скрытые файлы'
cd 
cd ..
cd ..
find -name ".*" > /home/westa/Рабочий\ стол/labs/labs/direct/file1.txt 2>/dev/null
echo 'Теперь в file1.txt все скрытые файлы и директории'
echo 'find ищет по скрытым файлам и директориям'
