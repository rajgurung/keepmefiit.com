require 'rails_helper'

RSpec.describe "user_workouts/index", type: :view do
  before(:each) do
    assign(:user_workouts, [
      UserWorkout.create!(
        :set => 2,
        :rep => 3,
        :weight => 4,
        :workout => nil,
        :user => nil
      ),
      UserWorkout.create!(
        :set => 2,
        :rep => 3,
        :weight => 4,
        :workout => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of user_workouts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
