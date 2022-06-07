class RemoveBrandFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :brand
  end
end
