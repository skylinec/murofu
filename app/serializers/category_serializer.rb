class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :children
  belongs_to :parent
end
