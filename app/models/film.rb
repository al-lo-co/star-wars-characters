class Film < ApplicationRecord
  has_and_belongs_to_many :characters
  validates :producer, :title, :episode, :director, presence: true
end
