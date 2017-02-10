require 'rails_helper'

RSpec.describe "user_workouts/show", type: :view do
  before(:each) do
    @user_workout = assign(:user_workout, UserWorkout.create!(
      :set => 2,
      :rep => 3,
      :weight => 4,
      :workout => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
