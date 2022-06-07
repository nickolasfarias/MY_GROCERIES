class Product < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :lines
  validates :name, :category, :price, :market, :address, presence: true
  validates :price, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: %i[name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
