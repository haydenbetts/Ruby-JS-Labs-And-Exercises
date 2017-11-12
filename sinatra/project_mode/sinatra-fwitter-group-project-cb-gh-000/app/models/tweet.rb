class Tweet < ActiveRecord::Base
  belongs_to :user

  #we use this to replace ruby style \n newline characters as html <br>
  def insert_break_points

    # I have no idea why the new lines seem to have two back slashes before
    # them. Ruby is automatically escaping new lines? If so... when? How
    # TODO how to I avoid this.
    self.content.gsub(/\\n/, "<br>")
  end

end
