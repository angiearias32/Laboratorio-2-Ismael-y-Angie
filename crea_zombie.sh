#!/bin/bash

# vamos a crear un hijo que no duerme tanto
(
    sleep 2
    exit 0
) &

HIJO=$!

echo "Hijo PID: $HIJO"

# esperamos a que el hijo muera
sleep 3

# cuando el hijo ya muere debe ser zombie
ps -o pid,ppid,stat,comm -p $HIJO

echo "Observamos con ps aux | grep Z"
# objetivo mantener vivo al padre
sleep 120


