class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :for_order
end
