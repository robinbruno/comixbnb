class AddAddressToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :address, :text
  end
end
