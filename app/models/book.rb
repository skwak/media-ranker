class Book < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :author, presence: true

  validates :description, presence: true

  def self.sort_by_rank
    all.limit(10).sort_by { |book| book.rank }.reverse
  end

end
