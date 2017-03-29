json.extract! user_workout, :id, :set, :rep, :weight, :workout_id, :user_id, :created_at, :updated_at
json.url user_workout_url(user_workout, format: :json)