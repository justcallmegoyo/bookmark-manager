require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  # get '/' do
  #   'Welcome to Bookmark Manager'
  # end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  run! if app_file == $0
end
