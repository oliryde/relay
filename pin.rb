require 'wiringpi'

class Pin
  def initialize(pin_number)
    @pin = WiringPi::GPIO.new
    @pin_state = false
    @pin_number = pin_number
  end

  def toggle
     if @pin_state
       off
     else
       on
     end
  end

  def piper
    @pin
  end

  def on
    unless @pin_state
      @pin.write(@pin_number, 0)
      @pin_state = true
    end
  end

  def off
    if @pin_state
      @pin.write(@pin_number, 1)
      @pin_state = false
    end
  end
end
