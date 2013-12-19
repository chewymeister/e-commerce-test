class RemoveAvailabilityDateAndDisplayHomepageFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :display_on_homepage, :boolean
    add_column :products,:display_on_homepage, :boolean, default: false
    remove_column :products, :availability_date, :boolean
    add_column :products, :availability_date, :datetime
  end
end
