class Character < ApplicationRecord
  has_and_belongs_to_many :films
  validates :name, :height, :mass, :birth_year, presence: true


  def toggle_fav
    self.update(favorite: !self.favorite)
  end
end
