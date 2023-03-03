class Review < ApplicationRecord
  belongs_to :listing, :user
  validates :rating, presence: true
end
