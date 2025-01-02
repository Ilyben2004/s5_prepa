#!/bin/bash

echo "Veuillez entrer un répertoire :"
read dir

if [ -d "$dir" ]; then
    echo "Les fichiers modifiés dans le répertoire $dir au cours des dernières 24 heures sont :"
    find "$dir" -type f -mtime -1 -print
else
    echo "Le répertoire spécifié n'existe pas."
fi

