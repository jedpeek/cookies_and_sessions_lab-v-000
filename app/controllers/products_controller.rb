class ProductsController < ApplicationController
  def index
    @product = Product.new
    @cart = current_cart
  end

  def add
    cart << params[:product]
  end

end
