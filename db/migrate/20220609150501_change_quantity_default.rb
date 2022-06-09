class ChangeQuantityDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :lines, :quantity, :integer, default: 1
  end
end
