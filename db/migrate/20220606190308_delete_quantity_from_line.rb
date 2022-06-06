class DeleteQuantityFromLine < ActiveRecord::Migration[6.1]
  def change
    remove_column :lines, :quantity
  end
end
