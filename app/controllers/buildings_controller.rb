class BuildingsController < ApplicationController

  # GET: /buildings
  get "/buildings" do
    erb :"/buildings/index"
  end

  # GET: /buildings/5
  get "/buildings/:id" do
    if logged_in?
      @building = Building.find_by(params[:id])
      erb :"/buildings/show"
    else
      redirect to "/login"
    end
  end

end
