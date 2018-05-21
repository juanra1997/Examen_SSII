#!/bin/bash

cont=3
while [ $cont -eq 3 ]
do
echo MENU
echo 1. Cambiar permisos del fichero
echo 2. Cambiar el fichero de directorio
echo 3. Cambiar el nombre del fichero
echo 0. Salir
echo -n "opcion: "
read op
echo "**********************************************************"
#echo Introduce la direccion absoluta del fichero
#read directorio
case $op in
	2) echo Introduce el directorio actual
	read directorio
	echo Introduce el nombre
	read nom
	if test -f $directorio/$nom
	then
	echo Introduce el nuevo directorio
	read directorioc
	if [ -d $directorioc ]
	then mv $directorio/$nom $directorioc/$nom
	else echo el directorio no existe
	fi
	echo "**********************************************************"
	else echo No es un fichero
	fi;;
	1) 	echo Introduce la direccion absoluta del fichero
		read directorio
		if test -f $directorio
		then
		ls -ltr $directorio
		echo Introduce los nuevos permisos
		read permisos
		if test chmod $permisos $directorio
		then chmod $permisos $directorio
		echo "*************************************************"
		ls -ltr $directorio
		echo "*************************************************"
		else echo "*************************************************"
			echo Los permisos introducidos no son validos
			echo "*************************************************"
		fi
		else echo No es un fichero
		fi;;
	3) echo Introduce el directorio actual
	read direc
	echo Introduce el nombre del fichero a cambiar
	read noma
	echo Introduce el nuevo nombre
	read nom
	if test -d $direc
	then if -f $direc/$nom
		then echo el archivo ya existe
		else mv $direc/$noma $direc/$nom
		fi
	else echo No es un directorio
	fi;;
	0) cont=2;;
	*) echo No es una opcion;;

esac
done
