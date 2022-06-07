class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = Product.search_by_name(params[:query]) if params[:query].present?
  end
end
