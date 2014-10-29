class Album < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :artist, presence: true

  validates :description, presence: true
end
