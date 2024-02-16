#!/bin/bash


if command -v "starship" >/dev/null 2>&1; then
    echo "starship existe"
else
    curl -sS https://starship.rs/install.sh | sh
fi

if command -v "stow" >/dev/null 2>&1; then
    echo "stow existe"
else
if command -v apt >/dev/null 2>&1; then
    echo "apt está instalado."
    sudo apt install stow
elif command -v pacman >/dev/null 2>&1; then
    echo "pacman está instalado."
    sudo pacman -S stow
elif command -v dnf >/dev/null 2>&1; then
    echo "dnf está instalado."
    sudo dnf install stow
else
    echo "No se encontró un gestor de paquetes compatible."
    exit 1
fi
fi

stow --adopt -vt ~ Wallpapers/ 
stow --adopt -vt ~ fonts/
stow --adopt -vt ~ starship/


if test -f "~/.bashrc"; then
    rm "~/.bashrc"
fi
cp $PWD/bash/.bashrc ~
