echo "--- CALCULADORA BASICA ---"

read -p "Ingrese un número: " num1
read -p "Ingrese otro número: " num2

echo "MENU"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
echo "5. Potenciación"
echo "6. Porcentaje"
read -p "Opción: " opcion
respuesta=0

if [ $opcion = 1 ]; then
respuesta=$((num1+num2))
elif [ $opcion = 2 ]; then
respuesta=$((num1-num2))
elif [ $opcion = 3 ]; then
respuesta=$((num1*num2))
elif [ $opcion = 4 ]; then
respuesta=$((num1/num2))
elif [ $opcion = 5 ]; then
respuesta=$((num1**num2))
elif [ $opcion = 6 ]; then
respuesta=$((num1*num2/100))
fi
echo "La respuesta es: $respuesta"
