#!/bin/bash
mkdir direct
> file.txt
echo 'Hello world' > file.txt
ls
mv file.txt direct
ls
echo file.txt перемещен в direct с Рабочего стола
mkdir direct2
cp direct/file.txt direct2/file1.txt
echo file.txt из директории direct скопирован в file1.txt в директорию direct2
rm -rf direct2/
echo Директория direct2 удалена
pwd
echo Показывает полный путь до домашней директории
cat direct/file.txt
less direct/file.txt
echo 'less программа для текстовых терминалов UNIX-подобных систем, используемая для просмотра, но не изменения содержимого текстовых файлов'
