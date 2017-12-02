class Admin::PreferencesController < ApplicationController

  def index
  end

  def show
  end

  def edit
    # if !Preference.all
    #   Preference.create(artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: False, allow_create_songs: True)
    # end
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    flash[:notice] = "Your preferences have been saved"
    redirect_to edit_admin_preference_path(@preference)

  end

private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :artist_sort_order, :song_sort_order)
  end

end
