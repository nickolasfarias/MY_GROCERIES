class LinesController < ApplicationController

  def create
    # Find associated product and current cart
    chosen_product = Product.find(params[:product_id])
    current_cart = Cart.last

    # If cart already has this product then find the relevant line_item and iterate quantity otherwise create a new line_item for this product
    if current_cart.products.include?(chosen_product)
      # Find the line_item with the chosen_product
      @line_item = current_cart.lines.find_by(:product_id => chosen_product)
      # Iterate the line_item's quantity by one
      @line_item.quantity += 1
    else
      @line_item = Line.new
      @line_item.cart = current_cart
      @line_item.product = chosen_product
    end

    # Save and redirect to cart show path
    @line_item.save
    redirect_to cart_path(current_cart)
  end

  def destroy
    current_cart = Cart.last
    @line_item = Line.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(current_cart)
  end

  def add_quantity
    current_cart = Cart.last
    @line_item = Line.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path(current_cart)
  end

  def reduce_quantity
    current_cart = Cart.last
    @line_item = Line.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    end
    @line_item.save
    redirect_to cart_path(current_cart)
  end

  private

  def line_item_params
    params.require(:line).permit(:quantity, :product_id, :cart_id)
  end
end
