class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.references :thread, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
