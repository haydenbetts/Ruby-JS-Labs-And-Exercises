class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def downcase_name
    self.name.downcase
  end
  
end
