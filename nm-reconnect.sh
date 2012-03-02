#!/bin/bash
# Автор: bravikov@gmail.com
# Скрипт восстанавливает сетевое соединение при обрыве
# Проверка состояния соединения каждые 5 секунд
# Имя соединения задается в переменной connect_name

connect_name="Имя соединения"

while [ 1 ];
do

  sleep 5

  if [ "`nmcli con status | grep "$connect_name"`" == "" ];
   then nmcli con up id "$connect_name";
  fi;

done;

