#!/bin/bash

sum=0
if test -d $1
then
if test -w $1
then echo Si tiene permisos de escritura
else echo No tiene permisos de escritura
fi
if test -r $1
then echo Si tiene permisos de lectura
else echo No tiene permisos de lectura
fi
if test -x $1
then echo Si tiene permisos de ejecucion
else echo No tiene permisos de ejecucion
fi
#for i in `ls -ltr $1 | cut -d" " -f5` bytes
#do
#sum=`expr $sum + $i`
#echo $i
#done
echo Los tamaños de sus archivos son `ls -ltr $1 | cut -d" " -f5` bytes
else echo No es un directorio
fi
