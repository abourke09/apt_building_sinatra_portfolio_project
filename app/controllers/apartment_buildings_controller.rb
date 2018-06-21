class ApartmentBuildingsController < ApplicationController

  # GET: /apartment_buildings
  get "/apartment_buildings" do
    erb :"/apartment_buildings/index.html"
  end

  # GET: /apartment_buildings/new
  get "/apartment_buildings/new" do
    erb :"/apartment_buildings/new.html"
  end

  # POST: /apartment_buildings
  post "/apartment_buildings" do
    redirect "/apartment_buildings"
  end

  # GET: /apartment_buildings/5
  get "/apartment_buildings/:id" do
    erb :"/apartment_buildings/show.html"
  end

  # GET: /apartment_buildings/5/edit
  get "/apartment_buildings/:id/edit" do
    erb :"/apartment_buildings/edit.html"
  end

  # PATCH: /apartment_buildings/5
  patch "/apartment_buildings/:id" do
    redirect "/apartment_buildings/:id"
  end

  # DELETE: /apartment_buildings/5/delete
  delete "/apartment_buildings/:id/delete" do
    redirect "/apartment_buildings"
  end
end
