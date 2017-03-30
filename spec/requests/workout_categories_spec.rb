require 'rails_helper'

RSpec.describe "WorkoutCategories", type: :request do
  describe "GET /workout_categories" do
    it "works! (now write some real specs)" do
      get workout_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
