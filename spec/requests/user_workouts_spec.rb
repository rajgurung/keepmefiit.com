require 'rails_helper'

RSpec.describe "UserWorkouts", type: :request do
  describe "GET /user_workouts" do
    it "works! (now write some real specs)" do
      get user_workouts_path
      expect(response).to have_http_status(200)
    end
  end
end
