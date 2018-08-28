class ProductsController < ApplicationController
  def index
    @product = Product.new
  end

  def add
    cart << params[:product]
  end

end
