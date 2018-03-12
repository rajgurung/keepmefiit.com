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

module Marketplace
  class Item < ApplicationRecord
    belongs_to :user
    belongs_to :seller, class_name: 'User', foreign_key: :user_id

    has_many :order_items
    has_many :orders, through: :order_items
    has_many :buyers, through: :order_items, source: :user, class_name: 'User'

    INFO = 'Item must have a name a price by default'

    validates_presence_of :name, :price

    def description
      { name: self.name, price: self.price }
    end
  end
end

