class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :Brand
      t.string :Model
      t.integer :Year
      t.string :Fuel
      t.references :owners, null: false, foreign_key: true

      t.timestamps
    end
  end
end
