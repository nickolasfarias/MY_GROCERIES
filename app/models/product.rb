class Product < ApplicationRecord
  has_many :lines
  validates :name, :brand, :category, :price, :market, :address, presence: true
  validates :price, numericality: { greater_than: 0 }
end
