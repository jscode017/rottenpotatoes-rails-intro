class Movie < ActiveRecord::Base
     def self.all_ratings
          Movie.uniq.pluck(:rating)
     end
     def all_ratings=(ratings)
          @all_ratings=ratings
     end
     def self.with_ratings(ratings_list)
          if ratings_list.nil? || ratings_list.length==0
               return Movie.all
          end
          return Movie.where('rating in (?)',ratings_list)   
     end
end
