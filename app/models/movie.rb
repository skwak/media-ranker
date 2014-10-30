class Movie < ActiveRecord::Base
  validates :name, :director, :description, presence: true
  validates :name, uniqueness: true

  def self.sort_by_rank
    all.limit(10).sort_by { |movie| movie.rank }.reverse
  end
  
end
