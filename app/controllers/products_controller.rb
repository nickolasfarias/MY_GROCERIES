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
    @products = Product.all.order(name: :asc)
    @products = Product.search_by_name(params[:query]) if params[:query].present?
    @pagy, @products = pagy(@products, items: 18)
  end
end
