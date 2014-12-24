require 'sinatra'
require_relative 'relay'

relay = Relay.new

array = [1, 2, 3, 4, 5, 6, 7, 8]

get '/toggle' do
  string = ""
  i = params[:relay].to_i if params[:relay]
  relay.toggle(i) if i
  array.each do |number|
    string << link(number)
  end
  return string
end

def link(i)
  "<a href=\"toggle?relay=#{i}\">Toggle #{i}</a>\n"
end
