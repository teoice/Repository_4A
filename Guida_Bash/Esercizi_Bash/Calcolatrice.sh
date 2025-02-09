#!/bin/bash
#Programma con l'uso di costrutti condizionali e operazioni aritmetiche

while true; do      #Tramite l'uso del ciclo interrativo "while", è possibile usare più volte la calcolatrice

    echo "Scrivi il primo valore"
    read a
    echo "Scrivi il secondo valore"
    read b
    echo "Scrivi l'operazione che vuoi svolgere tra queste: "+", "-", "*", "/", "**", "%"."
    read operazione

    case $operazione in
        "+")
            echo "Addizione"
            echo "Risultato: $((a+b))";;
        "-")
            echo "Sottrazione"
            echo "Risultato: $((a-b))";;
        "*")
            echo "Moltiplicazione"
            echo "Risultato: $((a*b))";;
        "/")
            echo "Divisione"
            if [[ $b -eq 0 ]]; then
            echo "Errore: Valore di b non tollerato"
            else 
            echo "Risultato: $((a/b))"
            fi;;
        "**")
            echo "Esponenziale"
            echo "Risultato: $((a**b))";;
        "%")
            echo "Resto"
            echo "Risultato: $((a%b))";;
        *)
            echo "Errore: Operazione non disponibile";;
    esac

    echo "Vuoi fare un'altra operazione? [y/n]"         #Uso del "if" per uscire dal programma
    read risposta
    if [[ $risposta -eq n ]]; then 
        echo "Uscita dal programma."
        break
    fi

done