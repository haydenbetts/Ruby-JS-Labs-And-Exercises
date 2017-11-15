class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings
  has_many :reservations, :through =>  :listings

  
  include Reservable
  
  def neighborhood_openings(date_1, date_2)
    openings(date_1, date_2)
  end

  def self.highest_ratio_res_to_listings
    
      self.all.max_by do |geo_rgn|
        geo_rgn.reservations.count / geo_rgn.listings.count 
      end
  
  end
  
  def self.most_res
      self.all.max_by {|geo_rgn| geo_rgn.reservations.count}
  end


end
