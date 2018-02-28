class Product < ApplicationRecord
	has_and_belongs_to_many :categories
	validates :name, presence: true, on: :create
	validates :price, presence: true, numericality: true, on: :create
end
