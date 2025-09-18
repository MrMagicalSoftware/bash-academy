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
      
      # 4) Invia l'archivio al server remoto
      echo "Invio dell'archivio a un server remoto..."
      echo "Inserisci l'utente del server remoto (es. user@host):"
      read remote_user
      echo "Inserisci il percorso di destinazione sul server remoto:"
      read remote_path
      
      scp "${dir_name}.tar.gz" "${remote_user}:${remote_path}"
      
      if [ $? -eq 0 ]; then
        echo "Archivio inviato con successo: ${dir_name}.tar.gz"
      else
        echo "Errore nell'invio dell'archivio: ${dir_name}.tar.gz"
      fi
    else
      echo "Errore nella creazione dell'archivio: ${dir_name}.tar.gz"
    fi
  fi
done
