require "spec_helper"

describe CustomProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/custom_products").should route_to("custom_products#index")
    end

    it "routes to #new" do
      get("/custom_products/new").should route_to("custom_products#new")
    end

    it "routes to #show" do
      get("/custom_products/1").should route_to("custom_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/custom_products/1/edit").should route_to("custom_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/custom_products").should route_to("custom_products#create")
    end

    it "routes to #update" do
      put("/custom_products/1").should route_to("custom_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/custom_products/1").should route_to("custom_products#destroy", :id => "1")
    end

  end
end
