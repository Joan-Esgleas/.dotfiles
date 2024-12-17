#!/bin/sh

Starship() {
  while true; do
    read -p "Install starship? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  if command -v "starship" >/dev/null 2>&1; then
  echo "starship existe"
else
  curl -sS https://starship.rs/install.sh | sh
fi
  stow --adopt -vt ~/.config Starship/
}

Fonts() {

  while true; do
    read -p "Install fonts? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  mkdir -p /usr/local/share/fonts/
  cd /tmp
  fonts=( 
  #"CascadiaCode"
  #"FiraCode"  
  #"Hack"  
  #"Inconsolata"
  "JetBrainsMono" 
  #"Meslo"
  #"Mononoki" 
  #"RobotoMono" 
  #"SourceCodePro" 
  #"UbuntuMono"
)
  for font in ${fonts[@]}
  do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/$font.zip
	sudo unzip $font.zip -d  /usr/local/share/fonts/$font/
    rm $font.zip
  done
  fc-cache
}

Wallpapers() {
  while true; do
    read -p "Install Wallpapers? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done
  stow --adopt -vt ~/.config Wallpapers/
}

Stow() {
  if ! command -v "stow" >/dev/null 2>&1; then
    echo "Stow doesn't exist"
    echo ":: Install stow to continue"
    exit
  fi
}

Bashrc() {
  while true; do
    read -p "Install Bashrc? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  if test -f "~/.bashrc"; then
      cp ~/.bashrc ~/.bashrc.bkp
      rm ~/.bashrc
  fi
  stow --adopt -vt ~ Bashrc/
}

Neovim() {
  while true; do
    read -p "Install Neovim config? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  stow --adopt -vt ~/.config Neovim/ 
}

Hyprland() {
  while true; do
    read -p "Install Hyprland? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done
  mkdir -p ~/.config/hypr/
  stow --adopt -vt ~/.config Hyprland/ 
}

Waybar() {
  while true; do
    read -p "Install Waybar? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  stow --adopt -vt ~/.config Waybar/
}

Dunst() {
  while true; do
    read -p "Install Dunst? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done


  stow --adopt -vt ~/.config Dunst/
}

Sddm() {
  while true; do
    read -p "Install Sddm? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done


  echo "Not implemented yet"
}

Swappy() {
  while true; do
    read -p "Install Swappy Screen shot tool? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done


  stow --adopt -vt ~/.config Swappy/
}

Alacritty() {
  while true; do
    read -p "Install Alacritty? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done
  stow --adopt -vt ~/.config/ Alacritty/
}

Wofi() {
  while true; do
    read -p "Install Wofi? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done
  stow --adopt -vt ~/.config Wofi/
}

Rofi() {
  while true; do
    read -p "Install Rofi? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  stow --adopt -vt ~/.config Rofi/
}

Grub() {
  while true; do
    read -p " You will need sudo!!! Install grub? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo
            return;
        break;;
        * ) 
            echo ":: Please answer yes or no."
        ;;
    esac
  done

  sudo stow --adopt -vt /etc/default Grub
  sudo update-grub
}

Starship
Fonts
Stow
Wallpapers
Bashrc
Neovim
Hyprland
Waybar
Dunst
Swappy
Alacritty
Wofi
Rofi
Grub
#Sddm

