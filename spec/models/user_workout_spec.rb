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

require 'rails_helper'

RSpec.describe UserWorkout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
