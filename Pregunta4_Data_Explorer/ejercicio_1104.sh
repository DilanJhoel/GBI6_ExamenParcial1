echo "Ejercicio 1.10.4 Data Explorer"
# Dilan Porras
# 13 de enero del 2022

#Buzzard et al. (2016) collected data on the growth of a forest in Costa Rica. In
#the file Buzzard2015_data.csv you will find a subset of their data, including
#taxonomic information, abundance, and biomass of trees.
echo "1. Write a script that, for a given CSV file and column number, prints:"
#● the corresponding column name;
#● the number of distinct values in the column;
#● the minimum value;
#● the maximum value.

# $bash ejercicio_1104.sh Buzzard2015_data.csv 7

# $1 nombre del directorio o archivo
# $2 número de columna de interés

echo "Nombre de la columna:"
cut -d ',' -f $2 $1 | head -n 1 
echo "Número de valores distintos:"
cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq | wc -l 
echo "Valor mínimo:"
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1 
echo "Valor máximo:"
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | tail -n 1 
