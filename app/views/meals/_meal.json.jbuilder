json.extract! meal, :id, :name, :calorie, :protein, :carb, :fat, :sodium, :sugar, :gram, :created_at, :updated_at
json.url meal_url(meal, format: :json)