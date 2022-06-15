class PaymentsController < ApplicationController
  def new
    @order = Order.last
  end
end
