class AddGuestAndReservationToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :reservation
    add_reference :reviews, :guest
  end
end
