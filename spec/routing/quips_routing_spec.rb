require "rails_helper"

RSpec.describe QuipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quips").to route_to("quips#index")
    end


    it "routes to #show" do
      expect(:get => "/quips/1").to route_to("quips#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/quips").to route_to("quips#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quips/1").to route_to("quips#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quips/1").to route_to("quips#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quips/1").to route_to("quips#destroy", :id => "1")
    end

  end
end
