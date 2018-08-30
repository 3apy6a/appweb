require 'sinatra'

get '/' do
  erb :index
end

get '/health' do
  erb :health
  #code = "<%= `sensors` %>"
  #erb code
end

get '/halt' do
  erb :halts
end

post '/halt' do
  reboot = "<%= `reboot` %>"
end

post '/reboot' do
  reboot = "<%= `reboot` %>"
end