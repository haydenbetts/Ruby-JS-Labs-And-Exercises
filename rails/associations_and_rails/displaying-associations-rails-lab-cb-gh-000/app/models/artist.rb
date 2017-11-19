class Artist < ActiveRecord::Base
     has_many :songs
     
     def song_count
         if self.songs
             self.songs.count
         end
     end
end
