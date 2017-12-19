# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :decimal(5, 2)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :seller
  # has_one :user

  def seller
    object.user
  end
end
