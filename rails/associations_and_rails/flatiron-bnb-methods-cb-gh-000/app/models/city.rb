class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods
  has_many :reservations, :through =>  :listings

  include Reservable
  
  def city_openings(date_1, date_2)
    openings(date_1, date_2)
  end
  
  # TODO how do you class methods from an activerecord concern into 
  
  def self.highest_ratio_res_to_listings
    
    self.all.max_by do |geo_rgn|
      geo_rgn.reservations.count / geo_rgn.listings.count 
    end
  
  end
  
  def self.most_res
      self.all.max_by {|geo_rgn| geo_rgn.reservations.count}
  end
  
end

