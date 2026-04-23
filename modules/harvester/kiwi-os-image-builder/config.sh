#!/bin/bash
set -ex

systemctl enable sshd
systemctl enable libvirtd
systemctl enable cloud-init
systemctl enable cloud-init-local
systemctl enable cloud-config
systemctl enable cloud-final
systemctl enable google-guest-agent
systemctl enable google-osconfig-agent
systemctl enable google-startup-scripts.service
systemctl enable NetworkManager

USER_NAME="opensuse"
PASSWORD="opensuse"
useradd -m -s /bin/bash "$USER_NAME"
echo "$USER_NAME:$PASSWORD" | chpasswd
echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER_NAME
chmod 440 /etc/sudoers.d/$USER_NAME