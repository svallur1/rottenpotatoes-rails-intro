class Movie < ActiveRecord::Base
  def self.all_ratings
    #return ['G','PG','PG-13','R']
     %w(G PG PG-13 R)
  end
  
  def self.filter_by_ratings(selected_ratings)
    Movie.where(rating:selected_ratings)
  end
  
end
