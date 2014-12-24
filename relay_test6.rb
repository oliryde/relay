require_relative 'relay'

relay = Relay.new

i = 1
increment = 1

loop do
  relay.on(i) if increment > 0
  relay.off(i) if increment < 0
  i += increment
  increment = -1 if i == 8 && increment > 0
  increment = 1 if i == 1 && increment < 0
  sleep 0.1
end
