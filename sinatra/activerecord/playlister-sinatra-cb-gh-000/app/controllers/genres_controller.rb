class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end

  get '/genres/:slug' do
    # remember to use params hash to dynamic vars from urls!!
    @genre = Genre.find_by_slug(params[:slug])
    erb :'/genres/show'
  end


end
