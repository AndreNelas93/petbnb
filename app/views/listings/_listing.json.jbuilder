json.extract! listing, :id, :title, :pet_types, :description, :address, :max_occupancy, :price_per_night, :max_stay, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
