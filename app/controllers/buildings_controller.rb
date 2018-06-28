class BuildingsController < ApplicationController

  #Show page for all Buildings
  get "/buildings" do
    if logged_in?
      @buildings = Building.all
      erb :"/buildings/index"
    else
      redirect to "/welcome"
    end
  end

  #Show page for individual Buildings
  get "/buildings/:id" do
    @building = Building.find_by(id: params[:id])
    if logged_in?
      erb :"/buildings/show"
    else
      redirect to "/login"
    end
  end

end
