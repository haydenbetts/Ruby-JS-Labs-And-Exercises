class Listing < ActiveRecord::Base
  
  # active_record associations
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations
  has_many :guests, :class_name => "User", :through => :reservations
  
  # validations
  validates_presence_of :address, :listing_type, :title, :description, :price, :neighborhood
 
  # TODO not working
  before_create :convert_owner_to_host
  before_destroy :convert_owner_to_guest
  
  
  def average_review_rating
    
    ratings = self.reviews.collect do |review| 
      review.rating
    end
    
    average = ratings.sum.to_f / ratings.size.to_f
      
  end
  
  private

  # TODO not working  
  def convert_owner_to_host
    self.host.host = true
    self.host.save
  end
  
  def convert_owner_to_guest
    # TODO this is kind of an indirect way of proving that this is the only 
    # remaining listing
    if self.host.listings.count == 1
      self.host.host = false
      self.host.save
    end
  end
  
  
end
