require "rails_helper"

RSpec.describe MothersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mothers").to route_to("mothers#index")
    end

    it "routes to #new" do
      expect(:get => "/mothers/new").to route_to("mothers#new")
    end

    it "routes to #show" do
      expect(:get => "/mothers/1").to route_to("mothers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mothers/1/edit").to route_to("mothers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mothers").to route_to("mothers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mothers/1").to route_to("mothers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mothers/1").to route_to("mothers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mothers/1").to route_to("mothers#destroy", :id => "1")
    end

  end
end
