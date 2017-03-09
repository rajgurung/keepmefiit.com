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

class Workout < ApplicationRecord
  mount_uploaders :pictograms, AvatarUploader

  has_many :user_workouts
	has_many :users, through: :user_workouts

	belongs_to :workout_category

end
