class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :place_type
      t.string :pet_types
      t.text :description
      t.string :address
      t.integer :max_occupancy
      t.integer :price_per_night
      t.integer :max_stay
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
