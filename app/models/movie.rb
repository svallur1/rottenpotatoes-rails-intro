class Movie < ActiveRecord::Base
  def self.all_ratings
    #return ['G','PG','PG-13','R']
     %w(G PG PG-13 R)
  end
  
  def self.filter_and_sort(selected, sorting)
    Movie.where('rating':selected).order(sorting)
  end
  
end
