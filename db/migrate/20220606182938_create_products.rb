class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.float :price
      t.string :market
      t.string :address

      t.timestamps
    end
  end
end
