require_relative 'pin'

class Relay
  def initialize
    @pin_numbers = [25, 8, 7, 11, 9, 10, 22, 17]
    @pins = []
    @pin_numbers.each do |pin_number|
      pin = Pin.new(pin_number)
      @pins << pin
    end

    def toggle(pin)
      @pins[pin_index(pin)].toggle
    end

    def toggle_all
      @pins.each do |pin|
        pin.toggle
      end
    end
    def on(pin)
      @pins[pin_index(pin)].on
    end
    def off(pin)
      @pins[pin_index(pin)].off
    end
    def all_off
      @pins.each do |pin|
        pin.off
      end
    end
    def all_on
      @pins.each do |pin|
        pin.on
      end
    end
    def pin_index(pin)
      pin - 1
    end
    trap "SIGINT" do
      all_off
      exit 130
    end
  end
end


