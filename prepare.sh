#!/bin/bash
set -euo pipefail
###------Добавление пользователя------
bash ./Scripts/add_user.sh
echo -e "\033[32m Пользователь user добавлен"
tput sgr0
###------Автоматический выбор пользователя------
bash ./Scripts/default_user.sh
echo -e "\033[32m Автоматический выбор пользователя настроен"
tput sgr0
###------Добавление адресов ТМК в hosts------
bash ./Scripts/hosts.sh
echo -e "\033[32m Адреса для ТМК добавлены"
tput sgr0
###------Переключатель рабочих столов------
bash ./Scripts/desktop_selector.sh
echo -e "\033[32m Включен переключатель рабочих столов на учётке админа"
tput sgr0
###------Синхронизация времени------
bash ./Scripts/timesyncd.sh
echo -e "\033[32m Время установлено"
tput sgr0
###------Включение доп. репозиториев------
bash ./Scripts/add_repositories.sh
echo -e "\033[32m Репозитории добавлены "
tput sgr0
###------Установка программ и зависимостей------
apt -y install cifs-utils remmina x11vnc yandex-browser-stable chromium-gost libdbus-glib-1-2
dpkg -i ./Office/*.deb
echo -e "\033[32m  Программы установлены"
tput sgr0
#------Установка драйвера и фильтра для Xerox B210------
bash ./Scripts/xerox_b210.sh
echo -e "\033[32m Драйвер принтера Xerox B210 установлен"
tput sgr0
###------Обмен------
#bash ./Scripts/share.sh
#cho -e "\033[32m  Обменник добавлен"
#tput sgr0
#------Настройка VNC------
bash ./Scripts/vnc.sh
echo -e "\033[32m  VNC настроен, пароль по умолчанию - 1122"
tput sgr0
###------Установка КриптоПро------
bash ./CryptoPro/install.sh
dpkg -i ./CryptoPro/cprocsp-cptools-gtk-64_5.0.12000-6_amd64.deb
#/opt/cprocsp/sbin/amd64/cpconfig -license -set <KEY>
echo -e "\033[32m  Конейнеры кидать в /var/opt/cprocsp/keys/"
tput sgr0
echo -e "\033[32m  КриптоПро установлен"
tput sgr0
###------Установка Dr.Web------
bash ./DrWeb/drweb-11.1.3-av-linux-amd64.run
echo -e "\033[32m Антивирус установлен"
tput sgr0
echo -e "\033[32m Скрипт завершил работу"
tput sgr0
echo -e "\033[32m Через 10 секунд будет произведена перезагрузка"
tput sgr0
sleep 10s
reboot