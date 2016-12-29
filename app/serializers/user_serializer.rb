class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password
  has_many :post
  has_many :topic
end
