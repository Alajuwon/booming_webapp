class Hotspot < ApplicationRecord

	belongs_to :category

	geocoded_by :address
	after_validation :geocode


	def address
		"#{city} , #{country}"
	end
end
