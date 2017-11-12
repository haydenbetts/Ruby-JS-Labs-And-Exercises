class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    # so this weirdly just exists so that form_for will work? It is like an
    # abstract artist object never used for anything else? Yes. this has to
    # be right bc it is def never saved.
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.new
  end

  def update
	  @genre = Genre.find(params[:id])
	  @genre.update(genre_params(:name))
	  redirect_to genre_path(@genre)
	end


  private

	def genre_params(*args)
		params.require(:genre).permit(*args)
	end


end
