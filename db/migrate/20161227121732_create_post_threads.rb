class CreatePostThreads < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.references :post, polymorphic: true

      t.timestamps
    end
  end
end
