class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def create
    cart = Cart.last
    amount = 0
    line_items = []
    cart.lines.each do |line|
      amount += line.total_price
      a = {
        name: line.product.name,
        images: [line.product.image_url],
        amount: line.product.price_cents,
        currency: 'brl',
        quantity: line.quantity
      }
      line_items.push(a)
    end


    order = Order.create!(cart: cart, amount: amount, state: 'paid', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: orders_url,
      cancel_url: orders_url
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def destroy
    @order = Order.last
    @order.destroy
    redirect_to products_path
  end
end
