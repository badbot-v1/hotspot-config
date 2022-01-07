#!/bin/sh
nmcli con add type wifi ifname wlan0 con-name Hotspot autoconnect yes ssid badbot
nmcli con modify Hotspot 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
nmcli con modify Hotspot wifi-sec.key-mgmt wpa-psk
nmcli con modify Hotspot wifi-sec.psk "badbot12"
nmcli con up Hotspot

cp Hotspot /etc/NetworkManager/system-connections/
cp static-ips.d /etc/NetworkManager/dnsmasq-shared.d

