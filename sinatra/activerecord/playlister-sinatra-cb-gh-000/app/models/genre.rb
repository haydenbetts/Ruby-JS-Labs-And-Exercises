class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, :through => :song_genres
  has_many :artists, :through => :songs

  def slug
      @slugged = self.name
      @slugged = @slugged.downcase
      @slugged = @slugged.gsub(/(^\s+|[^a-zA-Z0-9 ]+|\s+$)/,"")
      @slugged = @slugged.gsub(/\s+/, "-")
  end

  def self.find_by_slug(slug)
    Genre.all.detect {|genre| genre.slug == slug}

  end


end
