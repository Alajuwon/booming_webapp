class Hotspot < ApplicationRecord

	belongs_to :category

	geocoded_by :address
	after_validation :geocode


	def hotspot
		"#{city} , #{state} , #{street_address} "
	end
end
