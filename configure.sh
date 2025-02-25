#!/bin/bash

start() {
  echo "Cereal Configure Script"
  check
}

check() {
  read -p "Start with configure? this script will required root privileges. (Y/N): " answer
  case "$answer" in
  [Yy]*) proceed ;;
  [Nn]*)
    echo "Canceled."
    exit 1
    ;;
  *)
    echo "It's not that hard—just type Y or N."
    check
    ;;
  esac
}

proceed() {
  echo "Setting up ..."
  sudo pacman -Syu
  pacman -S starship --noconfirm --needed
  eval "$(starship init bash)"
  FONT="ter-v32b"
  VCONSOLE="/etc/vconsole.conf"
  setfont $FONT
  echo $VCONSOLE
  if grep -q "^FONT=" $VCONSOLE; then
    sed -i "s|^FONT=.*|FONT=${FONT}|" $VCONSOLE
  else
    echo "FONT=$FONT" >$VCONSOLE
  fi
  echo "Configuring ..."

  pacman -S git --noconfirm --needed
  pacman -S alacritty --noconfirm --needed
  pacman -S mc --noconfirm --needed
  pacman -S mako --noconfirm --needed
  pacman -S hyprland --noconfirm --needed
  pacman -S hyprpaper --noconfirm --needed
  pacman -S firefox --noconfirm --needed
  pacman -S htop --noconfirm --needed
  pacman -S macchina --noconfirm --needed
  pacman -S fuzzel --noconfirm --needed
  pacman -S neovim --noconfirm --needed
  pacman -S lazygit --noconfirm --needed
  pacman -S newsboat --noconfirm --needed
  pacman -S htop --noconfirm --needed
  pacman -S ly --noconfirm --needed
  pacman -S flatpak --noconfirm --needed
  pacman -S bat --noconfirm --needed
  pacman -S ncdu --noconfirm --needed
  pacman -S steam --noconfirm --needed
  pacman -S bluetui --noconfirm --needed

  pacman -S caligula --noconfirm --needed
  echo "Flatpaking ..."
  #flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  #sudo -u $SUDO_USER flatpak install --user flathub org.gimp.GIMP -y
  echo "Copy settings..."
  cp -R .config ~/.config

  systemctl enable ly.service
  echo "Cereal was configured."
  sudo -u $SUDO_USER macchina
}

start
