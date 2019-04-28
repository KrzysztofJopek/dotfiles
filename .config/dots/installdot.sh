DOTS=$(pwd ~/.config/dots)

if [ "$EUID" -ne 0 ]
then
	  echo "Please run as root"
  exit
fi

pacman --needed -S -y $(<"$DOTS/.install") --noconfirm

systemctl enable NetworkManager
systemctl start NetworkManager

for file in $(ls "$DOTS/scripts/")
do
	ln -s "$file" "/usr/local/bin/$file"
done


