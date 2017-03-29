json.extract! workout, :id, :name, :description, :created_at, :updated_at
json.url workout_url(workout, format: :json)