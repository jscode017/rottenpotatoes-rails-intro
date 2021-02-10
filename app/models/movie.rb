class Movie < ActiveRecord::Base
     def self.all_ratings
          Movie.uniq.pluck(:rating)
     end
     def all_ratings=(ratings)
          @all_ratings=ratings
     end
end
