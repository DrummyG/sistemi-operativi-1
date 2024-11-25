#Scrivere uno script che trasformi tutte le lettere di un file da minuscole in maiuscole
#! /bin/bash

if [ ! -f "$1" ]; then
    echo "errore nel nome del file"
else
    tr 'a-z' 'A-Z' < "$1" > "${1%.txt}"-maiuscole.txt
fi