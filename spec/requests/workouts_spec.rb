require 'rails_helper'

RSpec.describe "Workouts", type: :request do
  describe "GET /workouts" do
    it "works! (now write some real specs)" do
      get workouts_path
      expect(response).to have_http_status(200)
    end
  end
end
