class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :create_new_basket
  helper_method :current_basket
  helper_method :parent_categories
  helper_method :child_categories

  def create_new_basket
    session[:basket_id] ||= Basket.create.id
  end

  def current_basket
    Basket.find(session[:basket_id])
  end

  def parent_categories
    Category.where(:parent_id.nil?)
  end

  def child_categories
    Category.where(!:parent_id.nil?)
  end
end