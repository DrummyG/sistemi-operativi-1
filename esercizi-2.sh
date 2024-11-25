#realizzare uno script che archivi Titti i file modificati nelle ultime 24 ore presenti nella home dell'utente che esegue lo script
#! /bin/bash

find "$HOME" -type f -mtime -1 -print0 | tar -czvf "$HOME/backup.tar.gz" --null -T -

echo "Archivio creato: backup nella directory $HOME"
