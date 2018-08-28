class ProductsController < ApplicationController
  def index
  end

  def add
    @product = Product.find(params[:id])

    current_cart << @product.id

    session[:cart] = cart
  end
end
