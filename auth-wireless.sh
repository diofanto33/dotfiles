#!/bin/bash

# parametros 
SSID="Codocentes"
INTERFACE="wlan0"  
USERNAME=" "
PASSWORD=" "

nmcli connection add type wifi con-name $SSID ifname $INTERFACE ssid $SSID \
    wifi-sec.key-mgmt wpa-eap \
    802-1x.eap peap \
    802-1x.identity "$USERNAME" \
    802-1x.password "$PASSWORD" \
    802-1x.phase2-auth mschapv2

# Espera 5 segundos
sleep 5

nmcli connection up $SSID && echo "Conectado a '$SSID' con éxito." || echo "No se pudo conectar a '$SSID'."
