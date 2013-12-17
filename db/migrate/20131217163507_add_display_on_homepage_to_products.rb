class AddDisplayOnHomepageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :display_on_homepage, :boolean
  end
end
