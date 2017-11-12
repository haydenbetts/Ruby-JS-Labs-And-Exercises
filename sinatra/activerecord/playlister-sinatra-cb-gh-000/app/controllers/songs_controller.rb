require 'sinatra/base'
require 'rack-flash'

class SongsController < ApplicationController
  use Rack::Flash

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/edit'
  end

  get '/songs/:slug' do
    # remember to use params hash to dynamic vars from urls!!
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/show'
  end

  post '/songs' do
    @song = Song.create(params[:song])

    # this is the most complicated thing here, data-wise.
    # the fact that genre_ids is accessible via AR, and that
    # we can pass an array of genre_ids to it even though it
    # doesn't actually exist as a single column in any table
    @song.genre_ids = params[:genres]

    if Artist.find_by name: params[:artist][:name]
      # TODO yes, this is horrible. Just testing.
      @artist = Artist.find_by name: params[:artist][:name]
    else
      @artist = Artist.create(params[:artist])
    end

    @song.artist = @artist
    @song.save

    flash[:message] = "Successfully created song."

    redirect "/songs/#{@song.slug}"
  end


  post '/songs/:slug' do

    @song = Song.create(params[:song])

    # this is the most complicated thing here, data-wise.
    # the fact that genre_ids is accessible via AR, and that
    # we can pass an array of genre_ids to it even though it
    # doesn't actually exist as a single column in any table
    @song.genre_ids = params[:genres]

    if Artist.find_by name: params[:artist][:name]
      # TODO yes, this is horrible. Just testing.
      @artist = Artist.find_by name: params[:artist][:name]
    else
      @artist = Artist.create(params[:artist])
    end

    @song.artist = @artist
    @song.save

    flash[:message] = "Successfully updated song."

    redirect "/songs/#{@song.slug}"

  end


end
