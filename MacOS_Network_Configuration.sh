#!/bin/bash

# turn off all unecessary network interfaces 
sudo ifconfig {interface name} down #repeat as many times as needed for multiple interfaces


# set DNS servers & configure ip address using quad9
sudo networksetup -setdnsservers Wi-fi 9.9.9.9 149.112.112.112 2620:fe::fe 2620:fe::9
sudo networksetup -setsearchdomains Wi-Fi tls://dns.quad9.net
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}


# turn off unnecessary ipv4 services for wifi only users
sudo networksetup -setv4off Ethernet
sudo networksetup -setv4off Thunderbolt\ Bridge

# turn off ipv6 
sudo networksetup -setv6off Ethernet
sudo networksetup -setv6off Wi-fi
sudo networksetup -setv6off Thunderbolt\ Bridge

# disable instrusive and unecessary services
sudo launchctl disable system/com.apple.fairplayd 
sudo launchctl disable system/com.apple.fairplaydeviceidentityd
sudo launchctl disable system/com.apple.bluetoothd
sudo launchctl disable gui/501/com.apple.bluetoothuserd
sudo launchctl disable gui/501/com.apple.bluetoothUIServer
sudo launchctl disable system/com.apple.nearbyd
