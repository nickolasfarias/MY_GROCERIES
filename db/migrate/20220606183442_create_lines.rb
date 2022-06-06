class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.float :total_price
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
