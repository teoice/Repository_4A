#!/bin/bash
#Es 1: Inizializzazione di un array di numeri interi positivi, e calcolo della somma e media.
numeri=(2 4 7 16 21)

somma=$((numeri[0] + numeri[1] + numeri[2] + numeri[3] + numeri[4]))

media=$(echo "$somma / ${#numeri[@]}" | bc)

echo "La somma dell'array è: $somma"
echo "La media dell'array è: $media"