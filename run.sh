#!/bin/bash
iptables -A POSTROUTING -t nat -j MASQUERADE
iptables -P FORWARD ACCEPT
openvpn --config /client.opvpn