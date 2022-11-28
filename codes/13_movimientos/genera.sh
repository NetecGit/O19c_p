#!/usr/bin/bash

# 
# Curso Oracle 19c Administración
#
rm -f datos.dat
touch datos.dat
cuantos=$1
c=0
while [ $c -lt $cuantos ]
do
	monto=$(expr 1000 + 100 \* $c)
	echo $monto
	echo "100$c,200$1,$monto" >> datos.dat
	c=$(expr $c + 1)
	echo $c
done
