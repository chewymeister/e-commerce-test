class BasketsController < ApplicationController
  def update
    @product = Product.find(params[:product_id])
    current_basket.products << @product

    redirect_to root_path
  end
end
