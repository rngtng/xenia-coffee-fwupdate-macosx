#!/usr/bin/env bash

PORT=/dev/cu.usbmodem143101

echo "-----------------------------------------"
echo "Reset COM-PORT $PORT"
echo "-----------------------------------------"

stty -f $PORT 1200

echo "-----------------------------------------"
echo "Update mit $1"
echo "-----------------------------------------"

./bossac --port=$PORT -e -w -v -b $1 -R

echo "-----------------------------------------"
echo "Upload Firmware erfolgreich"
echo "-----------------------------------------"
