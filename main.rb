require 'sinatra'
require './initializer'

get '/' do
  erb :index
end

get '/health' do
  erb :health

end

get '/halt' do
  erb :halts
end

post '/reboot' do
  if params[:reboot]
    action = `reboot`
    elsif params[:poweroff]
      action = `poweroff`
    
  end
end

