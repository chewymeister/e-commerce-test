class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notcie] = 'Your product has been created'
      redirect_to admin_root_path
    else
      flash[:error] = ['Your product has not been created']
      render 'new'
    end
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :availability_date, :active_status)
    end
end
