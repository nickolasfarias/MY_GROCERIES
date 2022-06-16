class CartsController < ApplicationController
  def show
    @cart = Cart.last
  end

  def destroy
    @cart = Cart.last
    @cart.destroy
    session[:cart_id] = nil
    redirect_to products_path
  end
end
