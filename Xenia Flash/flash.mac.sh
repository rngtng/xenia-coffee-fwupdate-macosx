#!/bin/bash
# flash.mac.sh
#
#              Xenia flash  script für die Espressomachine
#
# Created by sfr on 24.2.19
# Copyright 2019 SfR. All rights reserved.


BOSSAC="./bossac.mac"                           #
DEV="$1"                                     #
IMG="./sketch_xenia_V01.ino.arduino_due_x.bin"  #

        if [ "$1" ]; then
            stty -f "$DEV" 1200
            echo "$DEV"
            stty stop "$DEV"
            $BOSSAC  --port="$DEV"  -e -w -v -b "$IMG" -R
        else
            echo "Bitte Manual lesen, den Devicenamen mitgeben: "
            echo "zb  "
            echo "sudo ./flash.sh /dev/cu.usbmodem1462201"
        fi


# das war der erste Shell Befehl der funktionierte
#sudo  stty -f /dev/cu.usbmodem1462201 1200;sudo stty stop /dev/cu.usbmodem1462201; sudo ~/bin/bossac  --port=cu.usbmodem1462201  -e -w -v -b sketch_xenia_V01.ino.arduino_due_x.bin -R

