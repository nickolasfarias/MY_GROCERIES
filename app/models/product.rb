class Product < ApplicationRecord
  has_many :lines
  validates :name, :brand, :category, :price, :market, :address, presence: true
  validates :price, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: %i[name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
