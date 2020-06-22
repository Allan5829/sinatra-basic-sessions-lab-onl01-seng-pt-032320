require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = parans[:item]
    @session = session

    erb :checkout
  end

end
