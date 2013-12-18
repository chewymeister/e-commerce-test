class RemoveParentCategoryAddParentId < ActiveRecord::Migration
  def change
    remove_column :categories, :parent_category, :boolean
    add_column :categories, :parent_id, :integer
  end
end
