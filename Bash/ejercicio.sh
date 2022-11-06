echo Ingrese un numero
read nota1
echo Ingrese el segundo numero
read nota2

echo Ingrese 1 si desea sumarlos o ingrese 2 si desea restarlos
read sumaOresta

if [[$sumaOresta == 1]]; then
    resultado == $nota1 + $nota2
    echo $resultado
else
    resultado == $nota1 - $nota2
    echo $resultado