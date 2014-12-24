require 'pi_piper'

pin_number = ARGV[0].to_i

pin = PiPiper::Pin.new(:pin => pin_number, :direction => :out)

trap "SIGINT" do
  puts "Exit"
  pin.on
  exit 130
end


loop do
  pin.off
  sleep 0.1
  pin.on
  sleep 0.2
end


