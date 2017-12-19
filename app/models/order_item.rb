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

class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order
  belongs_to :user

  delegate :name, :price, :description, to: :item, prefix: true
end
