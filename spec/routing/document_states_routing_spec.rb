require "spec_helper"

describe DocumentStatesController do
  describe "routing" do

    it "routes to #index" do
      get("/document_states").should route_to("document_states#index")
    end

    it "routes to #new" do
      get("/document_states/new").should route_to("document_states#new")
    end

    it "routes to #show" do
      get("/document_states/1").should route_to("document_states#show", :id => "1")
    end

    it "routes to #edit" do
      get("/document_states/1/edit").should route_to("document_states#edit", :id => "1")
    end

    it "routes to #create" do
      post("/document_states").should route_to("document_states#create")
    end

    it "routes to #update" do
      put("/document_states/1").should route_to("document_states#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/document_states/1").should route_to("document_states#destroy", :id => "1")
    end

  end
end
