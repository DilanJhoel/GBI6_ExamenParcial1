# Ejercicio 1.10.2 Hormone Levels in Baboons
# Dilan Porras
# 13 de enero del 2022

#Gesquiere et al. (2011) studied hormone levels in the blood of baboons. Every individual was sampled several times.

echo "1. How many times were the levels of individuals 3 and 27 recorded?"
id3=`cut -f 1 Gesquiere2011_data.csv | grep -c -w 3`
echo "Niveles maleID 3:" $id3
id27=`cut -f 1 Gesquiere2011_data.csv | grep -c -w 27`
echo "Niveles maleID 27:" $id27

echo "2. Write a script taking as input the file name and the ID of the individual, and returning the number of records for that ID."
#bash ejercicio_1102.sh Gesquiere2011_data.csv 9
#bash ejercicio_1102.sh $1(nombre de directorio) $2(male ID)
echo "Número de registros del male ID:"
cut -f 1 $1 | grep -c -w $2

echo "3. Write a script that returns the number of times each individual was sampled."
ID=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $ID
do
Muestreos=`cut -f 1 Gesquiere2011_data.csv | grep -c -w $id`
echo "ID:" $id "Número de muestreos:" $Muestreos
done
