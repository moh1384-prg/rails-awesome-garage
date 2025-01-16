class CreateFavourites < ActiveRecord::Migration[7.1]
  def change
    create_table :favourites do |t|
      t.references :cars, null: false, foreign_key: true

      t.timestamps
    end
  end
end
