require 'pi_piper'

pins = [25, 8, 7, 11, 9, 10, 22, 17]

pin_objects = []

pins.each do |pin_number|
  pin = PiPiper::Pin.new(:pin => pin_number, :direction => :out)
  pin.on
  pin_objects << pin
end




trap "SIGINT" do
  puts "Exit"
  pin_objects.each do |pin|
    pin.on
  end
  exit 130
end

loop do
pin_objects.each do |pin|
  pin.off
end

sleep 0.02

pin_objects.each do |pin|
  pin.on
end
sleep 0.02
end
