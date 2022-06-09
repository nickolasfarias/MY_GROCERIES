class AddMarketImgUrlToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :market_image_url, :text
  end
end
