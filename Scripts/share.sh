###Предварительно подставьте в otdX.sh скриптах 
echo "Введите номер отделения: (1-2)"
read otd
	if [ $otd -eq 1 ]
		then bash ./Scripts/Share/otd1.sh
	elif [ $otd -eq 2 ]
		then bash ./Scripts/Share/otd2.sh
###Можно добавить ещё вариантов ниже по тому же принципу.
###Обязательно продулируйте скрипт otdN.sh с соотвествующим номером в /Scripts/Share/
#	elif [ $otd -eq 3 ]
#			then bash ./Scripts/Share/otd3.sh
		else echo "Ошибка, нет такого отделения"
	fi
exit