#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc
sudo pacman -Syy
#sudo reflector -c Switzerland -a 6 --sort rate --save /etc/pacman.d/mirrorlist


#sudo systemctl enable --now auto-cpufreq

sudo pacman -S sddm systemsettings xdg-desktop-portal-kde sddm-kcm powerdevil polkit-kde-agent plasma-workspace plasma-systemmonitor plasma-pa plasma-nm plasma-integration plasma-desktop plasma-browser-integration milou libksysguard libkscreen kwrited kwin kwallet-pam ksystemstats ksshaskpass kscreenlocker kscreen kmenuedit kinfocenter khotkeys kgamma5 kdeplasma-addons kdecoration kde-gtk-config kde-cli-tools kactivitymanagerd drkonqi breeze-gtk breeze bluedevil plasma-disks ark dolphin dolphin-plugins pacman-contrib sweeper konsole spectacle kate okular gwenview kcalc gnome-themes-extra ttf-liberation firefox htop vlc ttf-liberation neofetch htop 
sudo systemctl enable sddm
#/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#reboot
