class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :num_of_pets, :total_price, presence: true, numericality: { greater_than: 0 }
  validates :pet_type, presence: true
  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
