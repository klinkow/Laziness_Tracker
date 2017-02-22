require "rails_helper"

RSpec.describe LaziesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lazies").to route_to("lazies#index")
    end

    it "routes to #new" do
      expect(:get => "/lazies/new").to route_to("lazies#new")
    end

    it "routes to #show" do
      expect(:get => "/lazies/1").to route_to("lazies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lazies/1/edit").to route_to("lazies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lazies").to route_to("lazies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lazies/1").to route_to("lazies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lazies/1").to route_to("lazies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lazies/1").to route_to("lazies#destroy", :id => "1")
    end

  end
end
