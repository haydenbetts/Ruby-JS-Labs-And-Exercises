class Reservation < ActiveRecord::Base
  # activerecord associations
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  # activerecord validations
  validates_presence_of :checkin, :checkout
  validate :guest_does_not_own_listing, :ci_before_co
  # validates :guest, presence: true
  # validates :listing, presence: true
  # validates :review, presence: true
  
  include Reservable
  
  
  def duration
    date_parser(self.checkout.to_s) - date_parser(self.checkin.to_s)
  end
  
  def total_price
    self.duration * self.listing.price
  end
  
  
  private
    
  def guest_does_not_own_listing
    
    # when writing custom validations, you need to add an error. You cannot just
    # return true or false...
    if self.guest == self.listing.host
      errors.add(:guest_id, "You can't book your own apartment")
    end
  end
  
  def listing_available
  end
  
  def ci_before_co
    
      checkin = date_parser(self.checkin.to_s)
      checkout = date_parser(self.checkout.to_s)
    
    if checkin > checkout
      errors.add(:checkin, "Your checkin date must be before your checkout date")
    elsif checkin == checkout
      errors.add(:checkin, "Your checkin and checkout dates must be different")
    end
  end

end
