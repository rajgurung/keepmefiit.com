require 'rails_helper'

RSpec.describe "workout_categories/edit", type: :view do
  before(:each) do
    @workout_category = assign(:workout_category, WorkoutCategory.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit workout_category form" do
    render

    assert_select "form[action=?][method=?]", workout_category_path(@workout_category), "post" do

      assert_select "input#workout_category_name[name=?]", "workout_category[name]"

      assert_select "textarea#workout_category_description[name=?]", "workout_category[description]"
    end
  end
end
