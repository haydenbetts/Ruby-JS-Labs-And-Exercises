class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    # so this weirdly just exists so that form_for will work? It is like an
    # abstract artist object never used for anything else? Yes. this has to
    # be right bc it is def never saved.
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.new
  end

  def update
	  @artist = Artist.find(params[:id])
	  @artist.update(artist_params(:name, :bio))
	  redirect_to artist_path(@artist)
	end


  private

	def artist_params(*args)
		params.require(:artist).permit(*args)
	end

end
