class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  validates :rating, presence: true
end
