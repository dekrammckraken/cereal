#!/bin/bash

start() {
  echo "Calavera Restore Script"
  echo "This script should only be run after a fresh and minimal installation of Arch Linux."

  check_fresh
}

check_fresh() {
  read -p "Is this a fresh installation? (Y/N): " answer
  case "$answer" in
  [Yy]*) proceed ;;
  [Nn]*)
    echo "Canceled."
    exit 1
    ;;
  *)
    echo "It's not that hard—just type Y or N."
    check_fresh
    ;;
  esac
}

proceed() {
  echo "Starting the restore process..."

  sudo pacman -S git --noconfirm --needed
  sudo pacman -S alacritty --noconfirm --needed
  sudo pacman -S mc --noconfirm --needed
  sudo pacman -S dunst --noconfirm --needed
  sudo pacman -S hyprland --noconfirm --needed
  sudo pacman -S firefox --noconfirm --needed
  sudo pacman -S rofi --noconfirm --needed
  sudo pacman -S neovim --noconfirm --needed
  sudo pacman -S lazygit --noconfirm --needed
  sudo pacman -S newsboat --noconfirm --needed
  sudo pacman -S htop --noconfirm --needed
  sudo pacman -S ly --noconfirm --needed
  sudo pacman -S flatpak --noconfirm --needed

  echo "Configure packages..."

  #systemctl enable ly.service

}

start
