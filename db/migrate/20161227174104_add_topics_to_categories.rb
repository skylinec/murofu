class AddTopicsToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :topics, :category, index:true
  end
end
