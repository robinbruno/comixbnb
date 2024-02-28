class AddPosterToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :poster, :string
  end
end
