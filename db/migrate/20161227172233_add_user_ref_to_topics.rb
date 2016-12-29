class AddUserRefToTopics < ActiveRecord::Migration[5.0]
  def change
    add_reference :topics, :user, index: true
    add_foreign_key :topics, :users
  end
end
