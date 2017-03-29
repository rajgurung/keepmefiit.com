require "rails_helper"

RSpec.describe UserWorkoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_workouts").to route_to("user_workouts#index")
    end

    it "routes to #new" do
      expect(:get => "/user_workouts/new").to route_to("user_workouts#new")
    end

    it "routes to #show" do
      expect(:get => "/user_workouts/1").to route_to("user_workouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_workouts/1/edit").to route_to("user_workouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_workouts").to route_to("user_workouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_workouts/1").to route_to("user_workouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_workouts/1").to route_to("user_workouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_workouts/1").to route_to("user_workouts#destroy", :id => "1")
    end

  end
end
