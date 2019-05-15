#!/bin/bash

sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
country=FR
update_config=1

network={
ssid="HUAWEI-CBF7"
psk="69663521"
}


