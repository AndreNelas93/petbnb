class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :num_of_pets
      t.string :pet_type
      t.timestamp :start_date
      t.timestamp :end_date
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
