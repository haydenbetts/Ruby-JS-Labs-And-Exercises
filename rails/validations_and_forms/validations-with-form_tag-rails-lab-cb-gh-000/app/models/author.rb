class Author < ActiveRecord::Base
  validates :name, length: {minimum: 1}
  validates :email, uniqueness: true
  validates :phone_number, length: {is: 10}

end
