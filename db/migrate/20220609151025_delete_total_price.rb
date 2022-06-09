class DeleteTotalPrice < ActiveRecord::Migration[6.1]
  def change
    remove_column :lines, :total_price
  end
end
