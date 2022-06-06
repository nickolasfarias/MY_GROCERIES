class AddQuantityToLine < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :quantity, :integer
  end
end
