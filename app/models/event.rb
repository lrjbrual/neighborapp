class Event < ApplicationRecord
	belongs_to :user
	has_one :event_cost
	has_many :courses
	has_many :bookings
end
