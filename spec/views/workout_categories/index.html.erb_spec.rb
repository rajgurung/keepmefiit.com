require 'rails_helper'

RSpec.describe "workout_categories/index", type: :view do
  before(:each) do
    assign(:workout_categories, [
      WorkoutCategory.create!(
        :name => "Name",
        :description => "MyText"
      ),
      WorkoutCategory.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of workout_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
