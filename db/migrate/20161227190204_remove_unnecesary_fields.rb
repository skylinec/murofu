class RemoveUnnecesaryFields < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :topic_type
    remove_column :categories, :topic_id
    remove_column :topics, :post_type
    remove_column :topics, :post_id
    remove_column :users, :post_id
    remove_column :users, :thread_id
  end
end
