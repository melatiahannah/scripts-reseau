#!/bin/bash
echo "Pinging la passerelle par défaut..."
ping -c 4 $(ip route | grep default | awk '{print $3}')
