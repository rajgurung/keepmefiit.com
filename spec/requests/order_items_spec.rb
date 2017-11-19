require 'rails_helper'

RSpec.describe "OrderItems", type: :request do
  describe "GET /order_items" do
    it "works! (now write some real specs)" do
      get order_items_path
      expect(response).to have_http_status(200)
    end
  end
end
