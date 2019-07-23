# ArchLife
Personal Arch-Linux day-to-day working.
### How to Install Arch Linux?
##### Step 01. Download Arch-linux iso from https://www.archlinux.org/download/.
##### Step 02. Make bootable USB drive or CD/DVD from downloades image.
##### Step 03. Boot using bootable disk. You'll be auto logged in in Command Line Interface (CLI).
##### Step 04. Partitioning
After logged in, create partitions as per your requirement.</br>
Command to view partitions: fdisk -l /dev/sda.</br>
Command to modify partitions: fdisk /dev/sda OR cfdisk /dev/sda OR gdisk /dev/sda.</br>
*Minimum 2 (two) partitions one root (/) partition one swap partition.*
##### Step 05. Formatting
command for formatting root partition: mkfs.ext4 /dev/sda1</br>
command for formatting swap partition: mkswap /dev/sda2</br>
command for using swap partition: swapon /dev/sda2</br>
##### Step 06. Mount partition(s)
Command for mounting partition: mount /dev/sda1 /mnt</br>
If more than one partition, mount partitions to folders /mnt/boot, /mnt/home etc. after creating folders /mnt/boot, /mnt/home etc. by using command mkdir /mnt/boot.
##### Step 07. Install Arch Linux
Start installing Arch Linux by using command: pacstrap /mnt base base-devel
##### Step 08. Generete fstab
Generate fstab file for auto-mounting drives by using command: genfstab /mnt >> /mnt/etc/fstab
##### Step 09. CHROOT to /mnt folder
CHROOT to /mnt folder by using command: arch-chroot /mnt
##### Step 10. Change Password for 'root' user
Command: passwd
##### Step 11. Install GRUB Package
Command: pacman -S grub
##### Step 12. Install GRUB
Command: grub-install /dev/sda
##### Step 13. GRUB Configura
Command: grub-mkconfig -o /boot/grub/grub.cfg
##### Step 14. Connect to Network
Command to install dialog: grub-mkconfig -o /boot/grub/grub.cfg
Command to find and connect to wifi network: wifi-menu
##### Step 15. REBOOT & Remove Install Media 
Command: reboot</br>
You'll be inside the installed Arch Linux.

### You are ready to GO explore Arch Linux.
