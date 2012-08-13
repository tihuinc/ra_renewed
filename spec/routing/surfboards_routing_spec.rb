require "spec_helper"

describe SurfboardsController do
  describe "routing" do

    it "routes to #index" do
      get("/surfboards").should route_to("surfboards#index")
    end

    it "routes to #new" do
      get("/surfboards/new").should route_to("surfboards#new")
    end

    it "routes to #show" do
      get("/surfboards/1").should route_to("surfboards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surfboards/1/edit").should route_to("surfboards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surfboards").should route_to("surfboards#create")
    end

    it "routes to #update" do
      put("/surfboards/1").should route_to("surfboards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surfboards/1").should route_to("surfboards#destroy", :id => "1")
    end

  end
end
