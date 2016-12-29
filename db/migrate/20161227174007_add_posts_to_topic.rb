class AddPostsToTopic < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :topic, index: true
  end
end
