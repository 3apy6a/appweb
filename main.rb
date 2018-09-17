require 'sinatra'
require './initializer'

get '/' do
  erb :index
end

get '/health' do
 begin
  @inf = Sensor.new.sensors_read
  erb :health
 rescue => exception
  puts "Exception Class: #{ exception.class.name }"
  puts "Exception Message: #{ exception.message }"
  puts "Exception Backtrace: #{ exception.backtrace }" 
 end
  
end

get '/halt' do
  erb :halts
end

post '/reboot' do
  begin
    if params[:reboot]
      Halt.new.reboot
    elsif params[:poweroff]
      Halt.new.power_off
    end
  rescue => e
    puts "Exception Class: #{ e.class.name }"
    puts "Exception Message: #{ e.message }"
    puts "Exception Backtrace: #{ e.backtrace }"
  end  
end
