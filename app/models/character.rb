class Character < ApplicationRecord
  has_and_belongs_to_many :films


  def toggle_fav
    self.update(favorite: !self.favorite)
  end
end
