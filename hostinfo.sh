#!/bin/bash
echo "Type of OS:" && lsb_release -a
echo "Hostname:" && hostname
echo "Version of Kernel:" && uname -a
echo "IP:" && ip a | grep "inet "
echo "Uptime:" && uptime
echo "Free memory:" && free | egrep "Mem|Swap" | awk '{print $1,$3}'
echo "Authorized users:" && who
