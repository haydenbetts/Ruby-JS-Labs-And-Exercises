class Reservation < ActiveRecord::Base
  # activerecord associations
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  # activerecord validations
  validates_presence_of :checkin, :checkout
  validates :status, presence: true
  before_create :guest_does_not_own_listing
  # validates :guest, presence: true
  # validates :listing, presence: true
  # validates :review, presence: true
  
  private
    
    # I should do custom validation right?
    def guest_does_not_own_listing
      self.guest != self.listing.host
    end

end
