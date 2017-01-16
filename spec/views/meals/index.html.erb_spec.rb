require 'rails_helper'

RSpec.describe "meals/index", type: :view do
  before(:each) do
    assign(:meals, [
      Meal.create!(
        :name => "MyText",
        :calorie => 2.5,
        :protein => 3.5,
        :carb => 4.5,
        :fat => 5.5,
        :sodium => 6.5,
        :sugar => 7.5,
        :gram => 8.5
      ),
      Meal.create!(
        :name => "MyText",
        :calorie => 2.5,
        :protein => 3.5,
        :carb => 4.5,
        :fat => 5.5,
        :sodium => 6.5,
        :sugar => 7.5,
        :gram => 8.5
      )
    ])
  end

  it "renders a list of meals" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.5.to_s, :count => 2
  end
end
