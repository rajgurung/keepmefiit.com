# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  name       :text
#  calorie    :float
#  protein    :float
#  carb       :float
#  fat        :float
#  sodium     :float
#  sugar      :float
#  gram       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Meal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
