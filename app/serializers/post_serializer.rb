class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :user
  has_one :category
end
