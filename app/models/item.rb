class Item < ApplicationRecord
  belongs_to :user
  belongs_to :seller, class_name: 'User', foreign_key: :user_id

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :buyers, through: :order_items, source: :user, class_name: 'User'

end
