class Movie < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :director, presence: true

  validates :description, presence: true

  def self.sort_by_rank
    all.limit(10).sort_by { |movie| movie.rank }.reverse
  end
end
