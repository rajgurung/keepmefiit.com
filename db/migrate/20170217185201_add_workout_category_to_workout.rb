class AddWorkoutCategoryToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :workout_category, foreign_key: true
  end
end
