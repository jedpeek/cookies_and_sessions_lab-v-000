class ProductsController < ApplicationController
  def index
    @product = Product.new
    @cart = current_cart
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      cart << @product.id
    else
      render 'index'
    end
  end


  def add
    cart << params[:product]
  end

end
