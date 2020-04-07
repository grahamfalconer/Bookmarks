require 'sinatra/base'
require './lib/bookmark_list'
class Bookmarks < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.new
    @bookmarks.list
    erb :bookmarks
  end

  run! if app_file == $0
end
