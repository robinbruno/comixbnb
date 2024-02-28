class AddAvailabilityToComics < ActiveRecord::Migration[7.1]
  def change
    add_column :comics, :availability, :boolean, default: true
  end
end
