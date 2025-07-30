#!/bin/bash

# For MacOS computers
# turn off all unecessary network interfaces 
sudo ifconfig {interface name} down #repeat as many times as needed for multiple interfaces


# set DNS servers & configure ip address using quad9 ipv4/ipv6 Wi-fi
sudo networksetup -setdnsservers Wi-fi 9.9.9.9 149.112.112.112 2620:fe::fe 2620:fe::9
sudo networksetup -setsearchdomains Wi-Fi {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router} #en1 is the defualt

# set DNS servers & configure ip address using quad9 ipv4/ipv6 Ethernet
sudo networksetup -setdnsservers Ethernet 9.9.9.9 149.112.112.112 2620:fe::fe 2620:fe::9
sudo networksetup -setsearchdomains Ethernet {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}

# set DNS servers & configure ip address using quad9 ipv4/ipv6 Thunderbolt\ Bridge
sudo networksetup -setdnsservers Thunderbolt\ Bridge 9.9.9.9 149.112.112.112 2620:fe::fe 2620:fe::9
sudo networksetup -setsearchdomains Thunderbolt\ Bridge {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}

# set DNS servers & configure ip address using cloudfare ipv4/ipv6 Wi-fi
sudo networksetup -setdnsservers Wi-fi 1.1.1.3 1.0.0.3 2606:4700:4700::1113 2606:4700:4700::1003 #blocks malware and adult content
sudo networksetup -setsearchdomains Wi-Fi {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}

# set DNS servers & configure ip address using cloudfare ipv4/ipv6 Ethernet
sudo networksetup -setdnsservers Ethernet 1.1.1.3 1.0.0.3 2606:4700:4700::1113 2606:4700:4700::1003 #blocks malware and adult content
sudo networksetup -setsearchdomains Ethernet {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}

# set DNS servers & configure ip address using cloudfare ipv4/ipv6 Thunderbolt\ Bridge
sudo networksetup -setdnsservers Thunderbolt\ Bridge 1.1.1.3 1.0.0.3 2606:4700:4700::1113 2606:4700:4700::1003 #blocks malware and adult content
sudo networksetup -setsearchdomains Thunderbolt\ Bridge {insert search domain}
sudo ipconfig set en1 INFORM {insert intended ip address} {dns mask} {router}

# turning off ethernet if only using wifi
sudo networksetup -setv4off Ethernet
sudo networksetup -setv4off Thunderbolt\ Bridge

# turn off ipv6 services
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
