# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  subtotal   :decimal(12, 3)
#  total      :decimal(12, 3)
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :subtotal,
    :subtotal,
    :total,
    :buyer
  )

  has_many :order_items
  # has_many :items
end
