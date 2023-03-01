class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true, uniqueness: true
  validates :pet_types, :description, :address, presence: true
  validates :max_occupancy, :price_per_night, :max_stay, presence: true, numericality: { greater_than: 0 }
end
