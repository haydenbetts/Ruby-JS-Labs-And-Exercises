class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, :through => :songs


  # describe "Class methods" do
  #   it "given the slug can find an Artist" do
  #     slug = "taylor-swift"
  #     expect((Artist.find_by_slug(slug)).name).to eq("Taylor Swift")
  #   end
  # end

  def slug
      @slugged = self.name
      @slugged = @slugged.downcase
      @slugged = @slugged.gsub(/(^\s+|[^a-zA-Z0-9 ]+|\s+$)/,"")
      @slugged = @slugged.gsub(/\s+/, "-")
  end

  def self.find_by_slug(slug)
    Artist.all.detect {|artist| artist.slug == slug}

  end


end
