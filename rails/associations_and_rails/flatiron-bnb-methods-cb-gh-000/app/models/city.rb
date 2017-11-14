class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods
  has_many :reservations, :through =>  :listings

  # TODO it is possible that this is working well and that I
  # am just running into some RSPEC parsing trouble. It is also possible
  # that this is not working at all...
  def city_openings(date_1, date_2)

    date_1_parsed = date_parser(date_1)
    date_2_parsed = date_parser(date_2)
    open_listings = []
    
    self.listings.each do |listing|
      
    conflicting_res = listing.reservations.detect do |reservation|
         
        date_ci = reservation.checkin
        date_co = reservation.checkout
      
        if date_ci < date_1_parsed && date_co > date_2_parsed
           true
        elsif date_ci > date_1_parsed && date_ci < date_2_parsed
           true
        elsif date_co > date_1_parsed && date_co < date_2_parsed
           true
        end
     end
     
     if !conflicting_res
       open_listings << listing
     end
  end
     return open_listings
  end
  
  def date_parser(date)
    Date.strptime(date, '%Y-%m-%d')
  end
  
  def self.highest_ratio_res_to_listings
    
    City.all.max_by do |city|
      city.reservations.count / city.listings.count 
    end
  
  end
  
  def self.most_res
      City.all.max_by {|city| city.reservations.count}
  end
  
end

