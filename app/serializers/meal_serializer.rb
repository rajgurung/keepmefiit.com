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

class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :calorie, :protein, :carb, :fat, :sodium, :sugar, :gram
end
