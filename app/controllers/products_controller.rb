class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.where("model ILIKE ?", "%#{params[:query]}%")
    else
      @products = Product.where.not(user: current_user)
    end
  end
end
