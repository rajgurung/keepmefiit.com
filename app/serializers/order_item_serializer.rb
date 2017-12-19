# == Schema Information
#
# Table name: order_items
#
#  id          :integer          not null, primary key
#  quantity    :integer
#  total_price :decimal(12, 2)
#  unit_price  :decimal(12, 2)
#  item_id     :integer
#  order_id    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrderItemSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :quantity,
    :total_price,
    :unit_price,
    :item_id,
    :order_id,
    :user_id,
    :created_at,
    :updated_at,
    :item
  )
end
