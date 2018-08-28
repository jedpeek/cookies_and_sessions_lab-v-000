class ProductsController < ApplicationController
  def index
    @cart = current_cart
    @product = Product.new
  end

  def add
    @product = Product.find(params[:id])
    current_cart << @product.id
  end
end
