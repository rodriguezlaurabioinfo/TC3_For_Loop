## Para saber el tamaño del archico 

echo "Para saber el tamaño del archivo se pone el siguiente código"

ls -lh ../data/Marra2014_data.fasta

## Creación de la copia Marra2014_data.fasta en el directorio sandbox

echo " Para crear la copia de Marra2014_data.fasta en el directorio de sandbox y nombrar se ejecuta el siguiente código"

cp ../data/Marra2014_data.fasta my_file.fasta

# Para saber cuantos contigs se clasifican como isogrupo00036

echo " para saber cántos contigs se clasifican como isogrupo00036 se ejecuta el siguente código"

grep -c isogrup00036 my_file.fasta

# Separación del delimitador original de dos espacios con una coma 

echo "para separar el delimitador de dos espacios con una coma se utiliza el siguiente código"

cat my_file.fasta | tr -s ' ' ',' | head -n 3

# Guardar y sobrescrito de archivo temporal

echo "Para guardar y sobrescribir lo del archivo se ejecuta lo siguiente"

cat my_file.fasta | tr -s ' ' ',' > my_file.tmp

mv my_file.tmp my_file.fasta

# Para saber cuantos isogrupos únicos hay en el archivo

echo "Para saber cuatos isogrupos únicos hay en el archivo se utiliza el siguiente código"

grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

# Para saber que contig tiene el mayor número de lectura

echo "Para saber que contig tiene el mayor número de lectura se ejecuta el siguiente código"

grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3

#Para ordenar según el número de lee

echo "Para ordenar según el número de lee se ejecuta el siguiente código"

grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n | head -n 5 




