#!/bin/bash

echo Ingrese una nota
read nota

if [[ $nota -gt 9 ]]
	then
     		echo La nota es Exelente
	elif [[ $nota -ge 8 ]]
		then
			echo La nota es Muy buena
		elif [[ $nota -ge 6 ]]
			then
				echo La nota está Aprobada
			else
				echo La nota está Desaprobada
fi	
