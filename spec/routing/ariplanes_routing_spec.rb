require "spec_helper"

describe AriplanesController do
  describe "routing" do

    it "routes to #index" do
      get("/ariplanes").should route_to("ariplanes#index")
    end

    it "routes to #new" do
      get("/ariplanes/new").should route_to("ariplanes#new")
    end

    it "routes to #show" do
      get("/ariplanes/1").should route_to("ariplanes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ariplanes/1/edit").should route_to("ariplanes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ariplanes").should route_to("ariplanes#create")
    end

    it "routes to #update" do
      put("/ariplanes/1").should route_to("ariplanes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ariplanes/1").should route_to("ariplanes#destroy", :id => "1")
    end

  end
end
