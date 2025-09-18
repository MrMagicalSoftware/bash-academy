#!/bin/bash

# 1) Leggi il percorso
echo "Inserisci il percorso:"
read path

# Verifica se il percorso esiste
if [ ! -d "$path" ]; then
  echo "Il percorso non esiste."
  exit 1
fi

# 2) Per ogni cartella presente nel percorso, crea l'archivio corrispondente
for dir in "$path"/*/; do
  if [ -d "$dir" ]; then
    # Estrai il nome della cartella
    dir_name=$(basename "$dir")
    # Crea l'archivio
    tar -czf "${dir_name}.tar.gz" -C "$path" "$dir_name"
    
    # 3) Verifica la creazione degli archivi
    if [ -f "${dir_name}.tar.gz" ]; then
      echo "Archivio creato: ${dir_name}.tar.gz"
    else
      echo "Errore nella creazione dell'archivio: ${dir_name}.tar.gz"
    fi
  fi
done
