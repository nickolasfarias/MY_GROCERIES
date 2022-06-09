class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @products_similar = Product.where(name: @product.name)
    @marker = {
      lat: @product.latitude,
      lng: @product.longitude
    }
  end

  def index
    @count = Product.all
    @products = Product.all
    @products = Product.search_by_name(params[:query]) if params[:query].present?
    @pagy, @products = pagy(@products, items: 16)
  end
end
