# == Schema Information
#
# Table name: user_workouts
#
#  id         :integer          not null, primary key
#  set        :integer
#  rep        :integer
#  weight     :integer
#  workout_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user
end
