require_relative 'relay'

relay = Relay.new

i = 1

loop do
  relay.toggle(i)
  sleep 0.1
  i += 1
  i = 1 if i == 9
end
