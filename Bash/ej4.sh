#!/bin/bash


echo "Ingrese el nombre de un archivo: "
read archivo

if [[ -e $archivo ]];
then
	echo "El archivo existe"
	if [[ -d $archivo ]];
	then
		echo "El archivo es un directorio"
	else
		echo "El archivo no es un directorio"
	fi	
		if [[ -r $archivo ]];
		then
			echo "El archivo tiene permiso de lectura"
			if [[ -w $archivo ]];
			then
				echo "El archivo tiene permiso de escritura"
				if [[ -x $archivo ]];
				then
					echo "El archivo tiene permiso de ejecución"	
		fi
			fi
				fi		
else
	echo "El archivo no existe"
fi	
