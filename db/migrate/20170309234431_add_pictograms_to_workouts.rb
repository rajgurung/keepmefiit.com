class AddPictogramsToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :pictograms, :json
  end
end
