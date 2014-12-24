require 'pi_piper'

class Pin
  def initialize(pin_number)
    @pin = PiPiper::Pin.new(:pin => pin_number, :direction => :out)
    @pin.on
    @pin_state = false
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
      @pin.off
      @pin_state = true
    end
  end

  def off
    if @pin_state
      @pin.on
      @pin_state = false
    end
  end
end
