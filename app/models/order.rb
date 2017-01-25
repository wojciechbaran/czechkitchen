class Order < ApplicationRecord
	validates :name, :surname, :street, :number, :city, :phone, :presence => true
	has_many :order_food
end
