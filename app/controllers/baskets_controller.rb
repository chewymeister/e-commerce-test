class BasketsController < ApplicationController
  def update
    session[:return_to] ||= request.referer
    @product = Product.find(params[:product_id])
    current_basket.products << @product
    redirect_to session.delete(:return_to)
  end
end
