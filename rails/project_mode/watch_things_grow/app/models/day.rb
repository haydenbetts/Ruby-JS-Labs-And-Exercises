class Day < ApplicationRecord
  belongs_to :growing_thing
  validates_uniqueness_of :post_date
  # This method associates the attribute ":avatar" with a file attachment
   has_attached_file :image, styles: {
     thumb: '100x100>',
     square: '200x200#',
     large: '500x500>'
   }
   # these are virtual attributes. They do not exist in the db. They are teomporarily
   # passed into the object stored in memory in order to crop photo.
   attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

   # Validate the attached image is image/jpg, image/png, etc
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
