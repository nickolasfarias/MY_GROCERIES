class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  monetize :amount_cents
end
