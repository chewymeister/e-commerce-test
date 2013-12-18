class Basket < ActiveRecord::Base
  has_many :products

  def count
    products.count
  end
end
