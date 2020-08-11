#!/bin/sh

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

yay -S qutebrowser transmission-cli transmission-remote-cli-git
yay -S kakoune nnn fish
yay -S mpv mpd mpc ncmpcpp sxiv feh
yay -S man man-pages unzip unrar zip atool

yay -S ttf-symbola ttf-dejavu
yay -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-kr-fonts
yay -S adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts

yay -S openssh sshfs
yay -S alsa-utils xorg-xinit xorg-server xorg-setxkbmap xcape
yay -S scrot imagemagick
yay -S zathura zathura-cb zathura-pdf-mupdf 

yay -S picom rofi bspwm sxhkd dunst xdo xdotool alacritty
