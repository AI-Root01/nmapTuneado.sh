#!/bin/bash

# Definir la dirección IP a escanear
IP="192.168.1.100"

# Definir el rango de puertos a escanear
PUERTOS="1-65535"

# Definir el learning rate para el escaneo
LEARNING_RATE=0.5

# Realizar escaneo de puertos con nmap
echo "Realizando escaneo de puertos con nmap..."
nmap -sS -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --version-intensity 9 --learning-rate $LEARNING_RATE $IP

# Realizar escaneo de servicios con nmap
echo "Realizando escaneo de servicios con nmap..."
nmap -sV -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --version-intensity 9 --learning-rate $LEARNING_RATE $IP

# Realizar escaneo de versiones de servicios con nmap
echo "Realizando escaneo de versiones de servicios con nmap..."
nmap -sV -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --version-intensity 9 --learning-rate $LEARNING_RATE $IP

# Realizar escaneo de scripts con nmap
echo "Realizando escaneo de scripts con nmap..."
nmap -sC -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --learning-rate $LEARNING_RATE $IP

# Realizar escaneo de OS con nmap
echo "Realizando escaneo de OS con nmap..."
nmap -O -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --learning-rate $LEARNING_RATE $IP

# Realizar escaneo de vulnerabilidades con nmap
echo "Realizando escaneo de vulnerabilidades con nmap..."
nmap -sV -p $PUERTOS -T4 -A -v --reason --open --osscan-guess --script=vuln --learning-rate $LEARNING_RATE $IP

# Mostrar mensaje de finalización
echo "Escaneo completado."
