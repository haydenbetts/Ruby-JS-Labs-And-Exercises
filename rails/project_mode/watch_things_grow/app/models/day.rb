class Day < ApplicationRecord
  belongs_to :growing_thing
  validates_uniqueness_of :post_date
  # This method associates the attribute ":avatar" with a file attachment
   has_attached_file :image, styles: {
     thumb: '100x100>',
     square: '200x200#',
     large: '500x500>'
   }

   # Validate the attached image is image/jpg, image/png, etc
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
