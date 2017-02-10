require "rails_helper"

RSpec.describe WorkoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workouts").to route_to("workouts#index")
    end

    it "routes to #new" do
      expect(:get => "/workouts/new").to route_to("workouts#new")
    end

    it "routes to #show" do
      expect(:get => "/workouts/1").to route_to("workouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workouts/1/edit").to route_to("workouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workouts").to route_to("workouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workouts/1").to route_to("workouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workouts/1").to route_to("workouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workouts/1").to route_to("workouts#destroy", :id => "1")
    end

  end
end
