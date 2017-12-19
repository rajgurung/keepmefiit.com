# == Schema Information
#
# Table name: workouts
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  workout_category_id :integer
#  pictograms          :json
#

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :pictograms
end
