#!/usr/bin/env ruby
require 'serialport'

# Source: https://forum.arduino.cc/index.php?topic=38965.0

if ARGV.size < 1
 STDERR.print <<EOF
 Usage: #{$0} serial_port
EOF
 exit(1)
end

sp = SerialPort.new(ARGV[0], 9600, 8, 1, SerialPort::NONE)

# recieve part
# Thread.new do
 while true do
   while (i = sp.gets) do
     puts i
   end
 end
# end
