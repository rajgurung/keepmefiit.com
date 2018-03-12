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

module Marketplace
  class Order < ApplicationRecord
    has_many :order_items
    has_many :items, through: :order_items
    has_many :users, through: :order_items
    # has_one  :buyer, source: :users, class_name: 'User'#, -> { self.joins(:order_items).last.user }

    def buyer
      users.last
    end
  end
end