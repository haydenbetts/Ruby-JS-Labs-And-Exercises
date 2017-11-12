class Song < ActiveRecord::Base
  has_many :song_genres
  belongs_to :artist
  has_many :genres, :through => :song_genres

  def slug
      @slugged = self.name
      @slugged = @slugged.downcase
      @slugged = @slugged.gsub(/(^\s+|[^a-zA-Z0-9 ]+|\s+$)/,"")
      @slugged = @slugged.gsub(/\s+/, "-")
  end

  def self.find_by_slug(slug)
    Song.all.detect {|song| song.slug == slug}

  end

end
