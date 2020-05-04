# Xenia Coffee Machine Firmware updater MacOSX

MacOS X Firmware updater for Xenia Coffee Machine


# WARNING - this could potential brick your machine and requires a disassembly* - WARNING!!!

## Usage

The script assumes xenia chip is connected on `/dev/tty.usbmodem14101`. If not
you get message:

```
Error opening serial port /dev/tty.usbmodem14101 - No such file or directory(2).
```

In this case check for right device path with and update the script:

```
ls /dev/tty.usbmodem*
```

### Flashing
Once selected right device, execute following script to flash latest firmware:

```
./flash.sh
```

### Success

On success run looks like:

```
-----------------------------------------
Reset COM-PORT
-----------------------------------------
Device found on cu.usbmodem14101
Atmel SMART device 0x285e0a60 found
Erase flash
done in 0.019 seconds

Write 56252 bytes to flash (220 pages)
[==============================] 100% (220/220 pages)
done in 4.132 seconds

Verify 56252 bytes of flash
[==============================] 100% (220/220 pages)
Verify successful
done in 3.316 seconds
Set boot flash true
-----------------------------------------
Upload Firmware erfolgreich
-----------------------------------------
```

## Monitor

Additional a simple serial monitor script in ruby is included.

### Setup

```
gem install serialport
````

### Usage

```
./monitor.rb /dev/tty.usbmodem143101
```

## Background

In order to update to latest firmware, the onboard mega chip needs first to
get into programming mode via a reset. That's done with `due-reset`. After that,
`bossac` is able to upload the latest firmware.


## Related Sources

https://github.com/estobbart/due-reset
https://www.arduino.cc/en/Hacking/Upgrading16U2Due
https://forum.arduino.cc/index.php?topic=147639.0
