# Astra Prepare
####Перед запуском prepare.sh скопируйте содержимое репозитория например в /$HOME
* Данный набор скриптов:
 - Создаст  пользователя user с паролем 12345678
 - Включит автоматический выбор пользователя user (ALT+U зайти под другим пользователем)
 - Пропишет в hosts адрес для ТМК
 - Добавит на админке переключатель рабочих столов
 - Синхронизирует время
 - Подключит доп. репозитории
 - Установит Пакет Мой Офис, Dr.Web, Remmina, Яндекс Браузер, Хромиум ГОСТ, x11vnc, cifs-utils
 - Поставит драйвера для Xerox B210
 - Добавит обменник (По-умолчанию закоменитровано, ниже инструкция)
 - Настроит x11vnc для подключения к пользователям (Пароль по-умолчанию 1122, можно/нужно сменить)

Мой Офис
==
####Добавьте в папку Office .deb пакеты, переименовав их в email.deb, myoffice-standard.deb, presentation.deb (Nextcloud Минцифры)

#####Должно получится так: 
* Office 
    + email.deb
    + myoffice-standard.deb
    + presentation.deb

Dr.Web ЦСАЗИ
==
####Добавьте в папку DrWeb файл drweb-11.1.3-av-linux-amd64.run (Nextcloud Минцифры)
####В папке DrWeb файл Min-Zdrav.cfg заменить на свой
#####После установки:
1)зайти под юзером, в трее пкм "открыть Dr.Web для Linux"
2)Настройки (шестерёнка) -> Режим -> Значок замка -> Ввести логин и пароль админа -> Включить режим централизованной защиты -> Нажать на "Указать вручную" -> "Загрузить из файла" -> Выбрать файл Min-Zdrav.cfg -> Подключить

Обменник
==
####В папке Scripts отредактировать share.sh, под ваши требования. Далее в подпапке Share отредактировать файлы otdN.sh под свои нужды.
Пример настройки otd1.sh
```console
[Mount] 
What=//10.0.0.254/Share
Where=/mnt/obmen
Type=cifs 
Options=rw,uid=user,gid=users,user=Otd1,password=12345678
```
