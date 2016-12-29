class ForeignKeyCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :parent_id
    add_column :categories, :parent_id, :integer
    add_foreign_key :categories, :categories, column: :parent_id
  end
end
