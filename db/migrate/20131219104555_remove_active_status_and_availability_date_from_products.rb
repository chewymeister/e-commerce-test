class RemoveActiveStatusAndAvailabilityDateFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :active_status, :boolean
    add_column :products, :active_status, :boolean, default: false
    remove_column :products, :availability_date, :boolean
    add_column :products, :availability_date, :boolean, default: false
  end
end
