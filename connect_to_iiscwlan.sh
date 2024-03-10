#!/bin/sh

nmcli connection add \
 type wifi con-name "iiscwlan" ifname wlp2s0 ssid "iiscwlan" -- \
 wifi-sec.key-mgmt wpa-eap 802-1x.eap tls 802-1x.identity "arunachalaes@iisc.ac.in" \
 802-1x.ca-cert ~/ca.pem 802-1x.client-cert ~/cert.pem \
 802-1x.private-key ~/key.pem

# 802-1x.private-key-password "Avr5309@2812" 

# Consider including as penultimate line above
# 802-1x.ca-cert ~/ca.pem 802-1x.client-cert ~/cert.pem \
