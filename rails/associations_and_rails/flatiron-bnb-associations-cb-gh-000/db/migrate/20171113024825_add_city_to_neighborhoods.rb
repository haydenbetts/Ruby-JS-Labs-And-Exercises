class AddCityToNeighborhoods < ActiveRecord::Migration
  def change
    add_reference :neighborhoods, :city
  end
end
