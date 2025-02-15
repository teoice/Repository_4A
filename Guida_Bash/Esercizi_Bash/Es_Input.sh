#!/bin/bash
#In questo esercizio vedremo il funzionamento del comando "read", con le eventuali opzioni anche combinate.

read -r -p "Lettura di a, con messaggio di richiesta; per comodità usero l'opzione -p anche nei prossimi esempi: " a
echo "a = " "${a}"

read -r -p "Lettura di b, limitando il numero di caratteri da inserire a 5: " -n5 b
echo ""                                                                 #Questo "echo" è necessario per mandare accapo l'echo succesivo, dato che non utilizziamo enter.
echo "b = " "${b}"

read -r -p "Lettura di c, nascondendo l'input dal terminale" -s c
echo ""
echo "c = " "${c}"

echo (read -p "Lettura di d" d 