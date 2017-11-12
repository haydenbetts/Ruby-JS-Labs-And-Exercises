class AddForeignKeysToRides < ActiveRecord::Migration
  def change
    add_reference :rides, :taxi, index: true
    add_reference :rides, :passenger, index: true
  end
end
