class Topic < ApplicationRecord
  belongs_to :category
  has_many :post
  belongs_to :user
end
