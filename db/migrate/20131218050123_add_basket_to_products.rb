class AddBasketToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :basket, index: true
  end
end
