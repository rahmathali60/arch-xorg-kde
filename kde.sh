#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Switzerland -a 6 --sort rate --save /etc/pacman.d/mirrorlist


#sudo systemctl enable --now auto-cpufreq


sudo pacman -S --noconfirm xorg sddm plasma libreoffice-fresh ark dolphin dolphin-plugins sweeper konsole kate okular gwenview kcalc gnome-icon-theme gnome-themes-extra firefox htop vlc powertop adobe-source-sans-pro-fonts ttf-liberation noto-fonts noto-fonts-emoji adobe-source-han-serif-otc-fonts
sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
reboot
