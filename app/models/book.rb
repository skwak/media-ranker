class Book < ActiveRecord::Base
  validates :name, :author, :description, presence: true
  validates :name, uniqueness: true

  def self.sort_by_rank
    all.sort_by { |book| book.rank }.reverse
  end

end
