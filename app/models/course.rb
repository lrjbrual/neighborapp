class Course < ApplicationRecord
	belongs_to :event
	has_many :booking_items
end
