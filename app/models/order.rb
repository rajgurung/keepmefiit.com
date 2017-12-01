class Order < ApplicationRecord
  has_many :order_items
  has_many :users, through: :order_items # this needs more work as order will only have one user

end
