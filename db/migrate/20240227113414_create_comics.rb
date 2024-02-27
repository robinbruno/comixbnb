class CreateComics < ActiveRecord::Migration[7.1]
  def change
    create_table :comics do |t|
      t.string :genre
      t.string :title
      t.string :author
      t.date :published_in
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
