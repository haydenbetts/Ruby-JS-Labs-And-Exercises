class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"
  
  validates :rating, :description, presence: :true
  validate :reservation_accepted
  #validate :has_reservation, :reservation_accepted
  
  # make sure that Reservation.status == "accepted"
  
  private
  
    # in this function I take advantage of the fact that teach part of this if
    # block runs in order. TO make this more robust you should not rely on that...
    def reservation_accepted
      if !self.reservation
        errors.add(:reservation_id, "You must have a reservation")
      elsif self.reservation.status != "accepted"
        errors.add(:reservation_id, "You can only leave review if your reservation was accepted")
      elsif self.reservation.checkout > Date.today
        errors.add(:reservation_id, "You must have already checkout to leave a review")
      end
    end
  
end
