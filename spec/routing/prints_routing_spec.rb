require "spec_helper"

describe PrintsController do
  describe "routing" do

    it "routes to #index" do
      get("/prints").should route_to("prints#index")
    end

    it "routes to #new" do
      get("/prints/new").should route_to("prints#new")
    end

    it "routes to #show" do
      get("/prints/1").should route_to("prints#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prints/1/edit").should route_to("prints#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prints").should route_to("prints#create")
    end

    it "routes to #update" do
      put("/prints/1").should route_to("prints#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prints/1").should route_to("prints#destroy", :id => "1")
    end

  end
end
