class DeletePriceFromCart < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :price_cart
  end
end
