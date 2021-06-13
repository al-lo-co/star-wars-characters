class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :skin_color
      t.string :hair_color
      t.integer :height
      t.string :eye_color
      t.integer :mass
      t.string :birth_year
      t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
