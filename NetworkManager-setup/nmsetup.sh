#!/bin/bash

# This script will install and enable NetworkManager, replacing dhcpcd and wpa_supplicant

# Install NM
sudo xbps-install -S NetworkManager
# First, we must disable dhcpcd and wpa_supplicant as services as they will interfere
# with NetworkManager as all three control network connections
rm /etc/runit/runsvdir/default/dhcpcd
rm /etc/runit/runsvdir/default/wpa_supplicant
# This symlinks NM to /var/service/, telling runit to enable the program at startup
ln -s /etc/sv/NetworkManager /var/service/
# Then, a reboot to apply changes
sudo reboot
