require "spec_helper"

describe InproceedingsController do
  describe "routing" do

    it "routes to #index" do
      get("/inproceedings").should route_to("inproceedings#index")
    end

    it "routes to #new" do
      get("/inproceedings/new").should route_to("inproceedings#new")
    end

    it "routes to #show" do
      get("/inproceedings/1").should route_to("inproceedings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inproceedings/1/edit").should route_to("inproceedings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inproceedings").should route_to("inproceedings#create")
    end

    it "routes to #update" do
      put("/inproceedings/1").should route_to("inproceedings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inproceedings/1").should route_to("inproceedings#destroy", :id => "1")
    end

  end
end
