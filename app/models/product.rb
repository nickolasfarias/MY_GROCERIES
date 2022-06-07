class Product < ApplicationRecord
  has_many :lines
  validates :name, :category, :price, :market, :address, presence: true
  validates :price, numericality: { greater_than: 0 }
end
