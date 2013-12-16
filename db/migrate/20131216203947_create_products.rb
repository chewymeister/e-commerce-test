class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.datetime :availability_date
      t.boolean :active_status

      t.timestamps
    end
  end
end
