class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :producer
      t.string :title
      t.integer :episode
      t.string :director
      t.string :release_date

      t.timestamps
    end
  end
end
