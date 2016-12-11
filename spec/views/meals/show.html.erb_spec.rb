require 'rails_helper'

RSpec.describe "meals/show", type: :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      :name => "MyText",
      :calorie => 2.5,
      :protein => 3.5,
      :carb => 4.5,
      :fat => 5.5,
      :sodium => 6.5,
      :sugar => 7.5,
      :gram => 8.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8.5/)
  end
end
