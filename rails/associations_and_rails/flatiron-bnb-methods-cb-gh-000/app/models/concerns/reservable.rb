module Reservable
    extend ActiveSupport::Concern
    
    def openings(date_1, date_2)

    date_1_parsed = date_parser(date_1)
    date_2_parsed = date_parser(date_2)
    open_listings = []
    
    self.listings.each do |listing|
    
    # TODO this code is very similar to the code I use for listing_available?
    # in class Listing. Refactor to combine these two.
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
  
  
end