#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
#echo "KEYMAP=de_CH-latin1" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:0985 | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S grub efibootmgr networkmanager network-manager-applet libvirt dialog wpa_supplicant mtools bluez bluez-utils dosfstools reflector base-devel linux-headers avahi gvfs gvfs-smb nfs-utils inetutils dnsutils alsa-utils bash-completion openssh rsync reflector acpi acpi_call tlp bridge-utils dnsmasq vi pulseaudio ipset flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font xdg-user-dirs xdg-utils pulseaudio pavucontrol 

# pacman -S --noconfirm xf86-video-amdgpu
pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
syst
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable acpid

useradd -m alone
echo alone:0985 | chpasswd
usermod -aG libvirt alone

echo "alone ALL=(ALL) ALL" >> /etc/sudoers.d/alone


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"




