#creare uno script che archivi tar e comprimi sia in bzip2 sia in gzip, confronti la dimensione dei due file compressi e dica all'untente quale dei due sia più efficente
#! /bin/bash
cd
ls
echo "indica la cartella che vorresti comprimere"
read nomeCartella
tar -cvjf "$nomeCartella.tar.bz2" "$nomeCartella"
tar -cvzf "$nomeCartella.tar.gz" "$nomeCartella"

gz=$(stat -f"%z" $nomeCartella.tar.gz)
bz=$(stat -f"%z" $nomeCartella.tar.bz2)

if [ $gz -lt $bz ]; then
    echo "il file gz è più leggero"
else
    echo "il file bz2 è più leggero"
fi