class AddNeighborhoodAndHostToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :neighborhood
    add_reference :listings, :host, :class_name => "User"
  end
end
