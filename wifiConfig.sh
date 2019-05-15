#!/bin/bash

# Setting up WiFi connection
# ssid -> NETWORK_NAME
# psk -> NETWORK_PASSWORD
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
country=FR
update_config=1

network={
ssid="HUAWEI-CBF7"
psk="69663521"
}

# updating 
sudo apt-get update
sudo apt-get dist-upgrade

# Installing Node-RED
bash <(curl -sL https://raw.githubusercontent.com/node-red/raspbian-deb-package/master/resources/update-nodejs-and-nodered)

# Autostart on boot
sudo systemctl enable nodered.service

# Download Source Code (smartmeshsdk)
git clone https://github.com/dustcloud/smartmeshsdk.git

# Installing the Python packages needed by the SmartMesh SDK
cd smartmeshsdk
pip install -r requirements.txt










