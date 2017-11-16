class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"
  
  validates :rating, :description, presence: :true
  # validate :reservation_accepted
  validate :has_reservation, :reservation_accepted
  
  # make sure that Reservation.status == "accepted"
  
  private
  
    # def reservation_accepted
    #   if !self.reservation
    #     errors.add(:reservation_id, "You must have a reservation")
    #   elsif self.reservation.status != "accepted"
    #     errors.add(:reservation_id, "You can only leave review if your reservation was accepted")
    #   end
    # end
     
    def has_reservation
      if !self.reservation
         errors.add(:reservation_id, "You must have a reservation")
      end
    end
     
    def reservation_accepted
      if self.reservation.status != "accepted"
         errors.add(:reservation_id, "You can only leave review if your reservation was accepted")
      end
    end
  
  
end
