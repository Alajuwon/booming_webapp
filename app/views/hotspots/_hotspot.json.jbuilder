json.extract! hotspot, :id, :city, :state, :address, :longitude, :latitude, :created_at, :updated_at
json.url hotspot_url(hotspot, format: :json)
