class SongsController < ApplicationController

  def create
    @song = Song.create(song_params)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to song_path(@song)
  end

private

  def song_params
    params.require(:song).permit(:name,:release,:release_year,:artist_name,:genre)

  end
end
