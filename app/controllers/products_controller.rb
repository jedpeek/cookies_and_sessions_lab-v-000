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
    @product = Product.find(params[:id])
    current_cart << @product.id
  end

  private

  def product_params
    params.require(:product).permit(:product)
  end

end
