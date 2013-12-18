class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.boolean :parent_category

      t.timestamps
    end
  end
end
