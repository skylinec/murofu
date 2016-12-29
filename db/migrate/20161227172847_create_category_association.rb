class CreateCategoryAssociation < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :category_id
    add_reference :categories, :category, index:true
  end
end
