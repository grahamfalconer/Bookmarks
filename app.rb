require 'sinatra/base'
require './lib/bookmark'
class Bookmarks < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark
    erb :bookmarks
  end

  run! if app_file == $0
end
