#!/bin/bash
#Esercizio con le varie tipologie di cicli e sintassi.

# 1.1 - Ciclo while con condizione logica----------------------------------------------------------------------------------------------------------------------------------------------------
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
echo " "

# 1.2 - Ciclo while con condizione di comando
echo "1.2 - Ciclo while con condizione di comando"
a=10
while echo $a | grep -q '[^0]'         #tramite l'opzione -q "a" non viene stampata ad ogni interazione
do
  ((a--))  
done
echo "Il ciclo while è arrivato a " $a
echo " "

# 2.1 - Ciclo Until----------------------------------------------------------------------------------------------------------------------------------------------------
echo "2.1 - Ciclo until"
sum=0
test=true

until [ $test = false ]  
do
  read -p "Inserisci un numero da sommare (negativo per fermare la somma): " num
  if [ "$num" -lt 0 ]; then
    test=false
  else
    sum=$((sum + num))  # aggiungi il numero alla somma
  fi
done

echo "La somma dei numeri inseriti è: $sum"
echo " "

# 2.2 - Ciclo until con l'utilizzo di break
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

# 3.1 - Ciclo for con elenco di variabili----------------------------------------------------------------------------------------------------------------------------------------------------

echo "3.1 - Ciclo for con elenco di variabili"
for file in /home /etc/passwd /root/fic.txt
do
file $file
done
echo " "

#3.2 - Ciclo for con range di variabili
echo "3.2 - Ciclo for con range di variabili"
for i in {1..10..2}; do
  echo -n "Valore: $i, "
done

for ((i=0; i<5; i++)); do   #Modo simile a quello visto in precedenza, più familiare a linguaggi come Java o C, con inizializzazione, condizione e incremento
  :                         #Tramite il comando :, dentro al for non succede niente.
done
