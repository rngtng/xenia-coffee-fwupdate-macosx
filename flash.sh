echo "-----------------------------------------"
echo "Reset COM-PORT"
echo "-----------------------------------------"
./due-reset /dev/tty.usbmodem1411

./bossac -U true -e -w -v -b xenia.bin

echo "-----------------------------------------"
echo "Upload Firmware erfolgreich"
echo "-----------------------------------------"
