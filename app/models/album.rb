class Album < ActiveRecord::Base
  validates :name, :artist, :description, presence: true
  validates :name, uniqueness: true

  def self.sort_by_rank
    all.sort_by { |album| album.rank }.reverse
  end

end
