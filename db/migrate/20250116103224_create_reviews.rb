class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :Comment
      t.integer :Rating
      t.references :cars, null: false, foreign_key: true

      t.timestamps
    end
  end
end
