class Product < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :lines
  validates :name, :price, :market, :address, presence: true
  validates :name, uniqueness: { scope: :market,
    message: "Should have one per market" }
  validates :price, numericality: { greater_than: 0 }
  monetize :price_cents

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: %i[name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
