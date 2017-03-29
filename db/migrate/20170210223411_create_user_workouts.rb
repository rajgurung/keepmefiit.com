class CreateUserWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_workouts do |t|
      t.integer :set
      t.integer :rep
      t.integer :weight
      t.references :workout, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
