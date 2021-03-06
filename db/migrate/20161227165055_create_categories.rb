class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :topic, polymorphic: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
