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

class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id, :set, :rep, :weight
  has_one :workout
  has_one :user
end
