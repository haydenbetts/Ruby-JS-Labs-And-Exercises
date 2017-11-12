class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # left here
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      # this knows to render the view associated with the new
      # controller action
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
