class AddPickableToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :pickable, :boolean
  end
end
