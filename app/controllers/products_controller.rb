require "open-uri"
require "nokogiri"

class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @marker =  {
      lat: @product.latitude,
      lng: @product.longitude
    }
  end

  def index
    @products = Product.all
    @products = Product.search_by_name(params[:query]) if params[:query].present?
  end
end
