class Album < ActiveRecord::Base
  validates :name, :artist, :description, presence: true
  validates :name, uniqueness: true

  def self.sort_by_rank
    all.limit(10).sort_by { |book| book.rank }.reverse
  end

end
