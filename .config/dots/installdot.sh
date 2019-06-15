#!/bin/bash
DOTS=$(pwd ~/.config/dots)

if ! command -V yay 2>/dev/null
then
	sudo pacman -S --needed --noconfirm git go
	temp=$(mktemp -d)
	git clone https://aur.archlinux.org/yay.git "$temp"
	cd $temp
	yes | makepkg -si
	cd -
	rm -rf "$temp"
fi

sudo pacman --needed -S -y $(<"$DOTS/.install") --noconfirm

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager


