require 'bundler'
Bundler.require
require_relative './models/reboot.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/health' do
    erb :health
  end
  
  get '/halt' do
    erb :halts
  end
  
  # get '/reboot' do
  #   "PC now reboot / Shatdown"
  # end
  post '/reboot' do
    if params[:reboot]
      action = `reboot`
      if params[:poweroff]
        action = `poweroff`
      end
    end
  end
  
  get '/poweroff' do
    "PC now Shatdown"
  end
  post '/poweroff' do
    "PC now Shatdown"
  end
end
