class PostSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :topic
end
