require "spec_helper"

describe IncollectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/incollections").should route_to("incollections#index")
    end

    it "routes to #new" do
      get("/incollections/new").should route_to("incollections#new")
    end

    it "routes to #show" do
      get("/incollections/1").should route_to("incollections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/incollections/1/edit").should route_to("incollections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/incollections").should route_to("incollections#create")
    end

    it "routes to #update" do
      put("/incollections/1").should route_to("incollections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/incollections/1").should route_to("incollections#destroy", :id => "1")
    end

  end
end
