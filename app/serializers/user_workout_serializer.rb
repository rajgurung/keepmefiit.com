class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id, :set, :rep, :weight
  has_one :workout
  has_one :user
end
