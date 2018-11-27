#!/bin/bash
cd
> shared.txt
ls -la shared.txt
echo 'это права доступа для shared.txt(чтение и запись, чтение)'
chmod 400 shared.txt
ls -la shared.txt
echo 'Владелец имеет право чтения; никто другой не имеет права выполнять никакие действия'
sudo useradd chika-veronica
sudo mkdir /home/chika-veronica
sudo chown chika-veronica /home/chika-veronica
sudo chgrp chika-veronica /home/chika-veronica
sudo passwd chika-veronica
echo 'Создаем нового пользователя chika-veronica'
sudo chown -R chika-veronica:chika-veronica shared.txt
echo 'Теперь владелец shared.txt chika-veronica'
su -l -c "echo 'hello' >> shared.txt" chika-veronica 
su -l -c "cat shared.txt" chika-veronica 
echo 'только у chika-veronica есть доступ к shared.txt'
echo 'проверим для westa'
su -l -c "cat shared.txt" westa
echo 'отказано в доступе'
echo 'теперь то же самое, но с директорией'
cd
mkdir direct1
ls -la 
chmod 400 /home/westa/direct1
ls -la
sudo chown -R chika-veronica:chika-veronica /home/westa/direct1
sudo chmod u=rwx,go-rwx /home/westa/direct1
su -l -c "cd /home/westa/direct1" chika-veronica
cd ..
su -l -c "cd /home/westa/direct1" westa
echo 'Если все пользователи смогут делать эти операции, то злоумышленники могут делать все что им захочется с вашими файлами'
sudo rm /home/westa/shared.txt
sudo rm -r /home/westa/direct1
sudo deluser --remove-all-files chika-veronica 2>/dev/null
echo 'пользователь chika-veronica '
