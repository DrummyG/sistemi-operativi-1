#Scrivere uno script che accetti in input due parametri numerici e stampi “grande” se la somma di questi è maggiore di 10, altrimenti stampi “piccolo”
#! /bin/bash
diff=10
somma=$1+$2
if  [ -z "$1" ] || [ -z "$2" ] || [ -n "$3" ]; then
    echo "ERRORE NELL'INPUT"
elif (( $somma < $diff )); then
    echo "numero piccolo"
else
    echo "numero grande"
fi