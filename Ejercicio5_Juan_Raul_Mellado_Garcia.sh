#!/bin/bash

cont=10
while [ $cont -gt 0 ]
do
echo Introduce un numero, te quedan $cont intentos
read num
cont=`expr $cont - 1`
if test $num -eq $1
then cont=0
	echo Has acertado el numero
fi
done
