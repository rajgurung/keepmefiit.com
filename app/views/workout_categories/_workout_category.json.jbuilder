json.extract! workout_category, :id, :name, :description, :created_at, :updated_at
json.url workout_category_url(workout_category, format: :json)