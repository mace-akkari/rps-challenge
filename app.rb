require 'sinatra/base'

class RPS < Sinatra::Base
    enable :sessions
  get '/' do
    erb(:index)
  end 

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'


  post '/game' do 
    @name = session[:name]
    erb(:game)
  end 