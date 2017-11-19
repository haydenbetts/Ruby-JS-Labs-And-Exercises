class AddArtistsToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :artist, foreign_key: true
  end
end
