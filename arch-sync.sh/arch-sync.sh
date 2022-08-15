#!bin/bash

set -e

## Full system update 

echo "Doing full system update"
sudo pacman --noconfirm -Syu

## Installing base-devel

echo "Installing base-devel, wget and git"
sudo pacman -S --noconfirm --needed base-devel wget git

##Installing xorg and other dependencies

echo "Installing xorg"
sudo pacman -S --noconfirm --needed xorg-server xorg-xinit webkit2gtk libxinerama libx11 libxft

##Installing fonts

echo "Installing fonts"
sudo pacman -S --noconfirm --needed ttf-jetbrains-mono ttf-dejavu ttf-liberation noto-fonts
echo "Installing pywal"
sudo pacman -S --noconfirm --needed python-pywal

##Installing system build

echo "Installing custom suckless build and dot files"
git clone https://github.com/ImprovedPasta/linux-setup.git
sudo pacman -S --noconfirm --needed sxhkd

echo "Moving dirs to .config"
mkdir ~/.config
cp ~/suckless ~/.config
cp ~/sxhkd ~/.config

echo "Installing Applications"
sudo pacman -S --noconfirm --needed firefox vim qbittorrent discord nautilus gnome-disk-utlity

echo "Setup Completed Successfully"
echo "Compile suckless and generate wal cache and restart!"
ech
