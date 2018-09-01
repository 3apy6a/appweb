require 'sinatra'
require './initializer'

Dir["./engine/*.rb"].each { |file| require file }

get '/' do
  erb :index
end

get '/health' do
  erb :health

end

get '/halt' do
  erb :halts
end

get '/reboot' do
  "PC now reboot"
end
post '/reboot' do
  "PC now reboot"
end

get '/poweroff' do
  "PC now Shatdown"
end
post '/poweroff' do
  "PC now Shatdown"
end