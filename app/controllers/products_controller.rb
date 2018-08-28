class ProductsController < ApplicationController
  def index
    @product = Product.new
    @cart = current_cart
  end

  def create
    @product = Product.new(product_params)

  def add
    @product = Product.find(params[:id])
    current_cart << @product.id
  end
end
