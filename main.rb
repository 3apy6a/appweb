require 'sinatra'
require './initializer'

get '/' do
  erb :index
end

get '/health' do
  @inf = Sensor.new.sensors_read
  erb :health
end

get '/halt' do
  erb :halts
end

post '/reboot' do
  if params[:reboot]
    Halt.new.reboot
  elsif params[:poweroff]
    Halt.new.power_off
  end
end
