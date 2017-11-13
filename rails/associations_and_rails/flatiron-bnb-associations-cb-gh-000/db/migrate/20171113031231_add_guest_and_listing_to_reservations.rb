class AddGuestAndListingToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :listing
    add_reference :reservations, :guest
  end
end
