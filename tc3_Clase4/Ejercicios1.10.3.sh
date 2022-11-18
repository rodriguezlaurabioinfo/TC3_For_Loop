# 1. 1) Escriba un script que tome uno de estos archivos y determina el número de filas (polinizadores) y columnas (plantas).

echo "Conteo de las filas"

wc -l n10.txt

echo "Regresión"

cat n10.txt | wc -l

echo "Conteo del número de columnas"

echo "Primero se ocupa la primera línea"

head -n 1 n10.txt

echo "Elimimación de los espacios y del terminador de línea"

head -n 1 n10.txt | tr -d ' ' | tr -d '\n'

echo "Conteo de caracteres"

head -n 1 n10.txt | tr -d ' ' | tr -d '\n' | wc -c

# 2.Escriba un script que imprima el número de filas y columnas para cada red

echo "Impresión del número de filas y columnas para cada red"

bash Ejercicio1.10.3.2.sh

# 3. Cuál es la red con el mayor número de filas? ¿Cuál es el que tiene el mayor número de columnas?

echo "Red con más filas"

bash Ejercicio1.10.3.2.sh | sort -n -r -k 2 | head -n 1

echo "Red con más columnas"

bash Ejercicio1.10.3.2.sh | sort -n -r -k 3 | head -n 1


