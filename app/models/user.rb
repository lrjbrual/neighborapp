class User < ApplicationRecord
	has_many :blogs
	has_many :events
	has_many :for_orders
	has_many :orders
	has_many :bookings
end
