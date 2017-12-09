# Jcropper paperclip processor
#
# This processor very slightly changes the default thumbnail processor in order to work properly with Jcrop
# the jQuery cropper plugin.

module Paperclip
 class Jcropper < Thumbnail
 def initialize(file, options = {}, attachment = nil)
 super
 @current_geometry.width = target.crop_w
 @current_geometry.height = target.crop_h
 end

 def target
 @attachment.instance
 end

 def transformation_command
 crop_command = [
 "-crop",
 "#{target.crop_w}x" \
 "#{target.crop_h}+" \
 "#{target.crop_x}+" \
 "#{target.crop_y}",
 "+repage"
 ]
crop_command + super
 end
 end
end
