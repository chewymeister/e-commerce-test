class BasketsController < ApplicationController
  def update
    session[:return_to] ||= request.referer
    @product = Product.find(params[:product_id])
    current_basket.products << @product
    redirect_to session.delete(:return_to)
  end

  def show
    @products = current_basket.products
  end

  def destroy
    product = Product.find(params[:product_id])
    current_basket.products.delete(product)
    
    redirect_to basket_path(current_basket)
  end
end
