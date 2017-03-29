require 'rails_helper'

RSpec.describe "workout_categories/show", type: :view do
  before(:each) do
    @workout_category = assign(:workout_category, WorkoutCategory.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
