#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

sudo sed -i '/\[multilib\]/,+1 s/^#//' /etc/pacman.conf

packages=("discord" "steam" "neofetch" "xfce4" "xfce4-goodies" "alacritty" "firefox" "git")

is_installed() {
    pacman -Q "$1" &> /dev/null
}

install_package() {
    sudo pacman -S --noconfirm "$1"
}

main() {
    for package in "${packages[@]}"; do
        if is_installed "$package"; then
            echo "$package is already installed."
        else
            echo "Installing $package..."
            install_package "$package"
            if [ $? -eq 0 ]; then
                echo "$package installed successfully."
            else
                echo "Failed to install $package. Please try again."
            fi
        fi
    done
}

main

sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/paru.git ~/paru 
cd ~/paru
makepkg -si

paru -S spotify
