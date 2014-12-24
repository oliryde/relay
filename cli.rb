require_relative 'relay'

relay = Relay.new

loop do
  i = gets.chomp.split('').uniq
  i.each do |item| 
    relay.toggle(item.to_i)
  end
end
