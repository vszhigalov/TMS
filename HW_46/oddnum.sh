#!/bin/bash

echo "---- EVEN OR ODD IN SHELL SCRIPT -----"
echo -n "Введите число:"
read n
echo -n "Вердикт: "
if [ `expr $n % 2` == 0 ]
then
	echo "$n - четное"
else
	echo "$n - нечетное"
fi
