require 'rails_helper'

RSpec.describe "workout_categories/new", type: :view do
  before(:each) do
    assign(:workout_category, WorkoutCategory.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new workout_category form" do
    render

    assert_select "form[action=?][method=?]", workout_categories_path, "post" do

      assert_select "input#workout_category_name[name=?]", "workout_category[name]"

      assert_select "textarea#workout_category_description[name=?]", "workout_category[description]"
    end
  end
end
