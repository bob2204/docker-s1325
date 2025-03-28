#!/bin/bash

# Vérification de l'existence du fichier

if [ -e ~/.vimrc ]
then
  echo "Le fichier ~/.vimrc est déjà présente"
  exit 1
fi

# Barre verticale

git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/vendor/start/indentLine
vim -u NONE -c "helptags  ~/.vim/pack/vendor/start/indentLine/doc" -c "q"

# Création du fichier

cat > ~/.vimrc <<EOF
runtime defaults.vim
let g:indentLine_char = "▏"
set nu
colors desert
EOF
