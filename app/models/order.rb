class Order < ApplicationRecord
	validates :name, :surname, :street, :number, :city, :phone, :presence => true
end
