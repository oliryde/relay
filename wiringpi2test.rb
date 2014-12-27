require 'wiringpi'
io = WiringPi::GPIO.new
io.write(0,0)

sleep 1

io.write(0,1)
