#!/bin/bash
#Esercizio con le varie tipologie di cicli e sintassi.

#-ciclo while----------------------------------------------------------------------------------------------------------------------------------------------------
#prima sintassi
echo "1.1 - Ciclo while con condizione logica"
a=0
while [[ $a -ne 10 ]]           #la condizione si basa su un confronto logico
do
 ((a++))                        #incremento di a
 if [ $a -eq 10 ]
 then
    echo "Il ciclo while è arrivato a " $a
 fi
done

#seconda sintassi
echo "1.2 - Ciclo while con condizione di comando"
a=10
while echo $a | grep -q '[^0]'         #tramite l'opzione -q "a" non viene stampata ad ogni interazione
do
  ((a--))  
done
echo "Il ciclo while è arrivato a " $a

#-ciclo until----------------------------------------------------------------------------------------------------------------------------------------------------
echo "2.1 - Ciclo until"
sum=0
test=true

until [ $test = false ]  
do
  read -p "Inserisci un numero da sommare (negativo per fermare la somma): " num
  if [ $num -lt 0 ]; then
    test=false
  else
    sum=$((sum + num))  # aggiungi il numero alla somma
  fi
done

echo "La somma dei numeri inseriti è: $sum"

#Ciclo until con l'utilizzo di break
#echo "2.2 - Ciclo until con l'utilizzo di break"
#sum=0
#until false  # Ciclo infinito che si interrompe con break
#do
#  read -p "Inserisci un numero (negativo per fermare): " num
#  if [ $num -lt 0 ]; then
#    break  # Interrompe il ciclo se il numero è negativo
#  fi
#  sum=$((sum + num))  # Aggiungi il numero alla somma
#done
#
#echo "La somma dei numeri inseriti è: $sum"

#-ciclo for----------------------------------------------------------------------------------------------------------------------------------------------------
