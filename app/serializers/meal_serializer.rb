class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :calorie, :protein, :carb, :fat, :sodium, :sugar, :gram
end
