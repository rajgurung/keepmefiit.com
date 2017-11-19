require "rails_helper"

RSpec.describe OrderItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_items").to route_to("order_items#index")
    end


    it "routes to #show" do
      expect(:get => "/order_items/1").to route_to("order_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/order_items").to route_to("order_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_items/1").to route_to("order_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_items/1").to route_to("order_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_items/1").to route_to("order_items#destroy", :id => "1")
    end

  end
end
