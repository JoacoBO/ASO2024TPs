#!/bin/bash
# Solicita el primer número 
echo "Ingrese el primer número:"
read num1

# Solicita el segundo número 
echo "Ingrese el segundo número:"
read num2

# Solicitar la operación al usuario
echo "Ingrese la operación que desea realizar SUMA(+)/RESTA(-)/MULTIPLICACIÓN(*)/DIVISIÓN(/):"
read operacion

# Realiza la operación y muestra el resultado
case $operacion in
+)
resultado=$(echo "$num1 + $num2" | bc)
echo "El resultado de SUMAR $num1 + $num2 es: $resultado"
;;
-)
resultado=$(echo "$num1 - $num2" | bc)
echo "El resultado de RESTAR $num1 - $num2 es: $resultado"
;;
\*)
resultado=$(echo "$num1 * $num2" | bc)
echo "El resultado de MULTIPLICAR $num1 * $num2 es: $resultado"
;;
/)
if [ "$num2" -eq 0 ]; then
echo "No se puede DIVIR por cero"
else
resultado=$(echo "scale=2; $num1 / $num2" | bc)
echo "El resultado de DIVIDIR $num1 / $num2 es: $resultado"
fi
;;
*)
echo "Operación incorrecta"
;;
esac
