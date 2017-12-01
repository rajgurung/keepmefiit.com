class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :seller
  # has_one :user

  def seller
    object.user
  end
end
