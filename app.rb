require 'sinatra/base'

class Bookmarks < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookrmarks
  end


  run! if app_file == $0
end
