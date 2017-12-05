class Day < ApplicationRecord
  belongs_to :growing_thing
  validates_uniqueness_of :post_date
end
