require "rails_helper"

RSpec.describe WorkoutCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workout_categories").to route_to("workout_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/workout_categories/new").to route_to("workout_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/workout_categories/1").to route_to("workout_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workout_categories/1/edit").to route_to("workout_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workout_categories").to route_to("workout_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workout_categories/1").to route_to("workout_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workout_categories/1").to route_to("workout_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workout_categories/1").to route_to("workout_categories#destroy", :id => "1")
    end

  end
end
