class Food < ApplicationRecord
	validates :name, :price, :presence => true
end
