class AddCoordinatesToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :latitude, :float
    add_column :comics, :longitude, :float
  end
end
