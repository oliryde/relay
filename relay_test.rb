require_relative 'relay'

relay = Relay.new
relay.all_on

sleep 1
relay.toggle(1)
relay.toggle(5)
sleep 1
relay.toggle_all
sleep 1

relay.toggle_all
sleep 1
relay.toggle_all
sleep 1

relay.all_off
