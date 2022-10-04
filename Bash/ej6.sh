#! /bin/bash

intento=1

quedan=3

while [ $quedan -gt 0 ]; do

echo -n 2+2?:

read result

if [ $result -eq 4 ]; then

echo "Correcto".

exit

else

quedan=$(($quedan - 1))

if [ $quedan -ne 0 ]; then

echo "Quedan $quedan intentos"

fi

intentos=$(($intentos + 1))

fi

done

echo "Fin."