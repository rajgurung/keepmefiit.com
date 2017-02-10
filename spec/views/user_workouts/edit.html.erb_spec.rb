require 'rails_helper'

RSpec.describe "user_workouts/edit", type: :view do
  before(:each) do
    @user_workout = assign(:user_workout, UserWorkout.create!(
      :set => 1,
      :rep => 1,
      :weight => 1,
      :workout => nil,
      :user => nil
    ))
  end

  it "renders the edit user_workout form" do
    render

    assert_select "form[action=?][method=?]", user_workout_path(@user_workout), "post" do

      assert_select "input#user_workout_set[name=?]", "user_workout[set]"

      assert_select "input#user_workout_rep[name=?]", "user_workout[rep]"

      assert_select "input#user_workout_weight[name=?]", "user_workout[weight]"

      assert_select "input#user_workout_workout_id[name=?]", "user_workout[workout_id]"

      assert_select "input#user_workout_user_id[name=?]", "user_workout[user_id]"
    end
  end
end
