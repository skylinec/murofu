class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :category
  has_many :post
  belongs_to :user
end
