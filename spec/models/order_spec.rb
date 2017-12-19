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

require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
