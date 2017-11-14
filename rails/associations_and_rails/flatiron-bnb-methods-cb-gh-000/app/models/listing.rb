class Listing < ActiveRecord::Base
  
  # active_record associations
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations
  has_many :guests, :class_name => "User", :through => :reservations
  
  # validations
  validates :address, presence: true
  validates :listing_type, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :neighborhood, presence: true

  # TODO not working
  before_create :convert_owner_to_host
  before_destroy :convert_owner_to_guest
  
  
  private

  # TODO not working  
  def convert_owner_to_host
    self.host.host = true
    self.host.save
  end
  
  def convert_owner_to_guest
    # check if this is this only listing
    if self.host.listings.count == 1
      self.host.host = false
      self.host.save
    end
  end
  
  
end
