json.extract! listing, :id, :place_type, :pet_types, :description, :address, :max_occupancy, :price_per_night, :max_stay, :user_id_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
