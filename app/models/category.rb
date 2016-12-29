class Category < ApplicationRecord
  has_many :topic

  has_many :children, :class_name => "Category", foreign_key: :parent_id
  belongs_to :parent, :class_name => "Category", foreign_key: :parent_id
end
