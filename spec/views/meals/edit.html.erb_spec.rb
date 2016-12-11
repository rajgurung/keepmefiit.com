require 'rails_helper'

RSpec.describe "meals/edit", type: :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      :name => "MyText",
      :calorie => 1.5,
      :protein => 1.5,
      :carb => 1.5,
      :fat => 1.5,
      :sodium => 1.5,
      :sugar => 1.5,
      :gram => 1.5
    ))
  end

  it "renders the edit meal form" do
    render

    assert_select "form[action=?][method=?]", meal_path(@meal), "post" do

      assert_select "textarea#meal_name[name=?]", "meal[name]"

      assert_select "input#meal_calorie[name=?]", "meal[calorie]"

      assert_select "input#meal_protein[name=?]", "meal[protein]"

      assert_select "input#meal_carb[name=?]", "meal[carb]"

      assert_select "input#meal_fat[name=?]", "meal[fat]"

      assert_select "input#meal_sodium[name=?]", "meal[sodium]"

      assert_select "input#meal_sugar[name=?]", "meal[sugar]"

      assert_select "input#meal_gram[name=?]", "meal[gram]"
    end
  end
end
