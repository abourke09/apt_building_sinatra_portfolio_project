class ResidentsController < ApplicationController

  # GET: /residents
  get "/residents" do
    erb :"/residents/show.html"
  end

  #Signup page form
  get "/residents/new" do
    if logged_in?
      redirect to "/residents"
    else
      erb :"/residents/new.html"
    end
  end

  #Signup page- POST action
  post "/residents" do
    if params[:username] == "" || params[:password] == "" || params[:name] == "" || params[:apartment_number] == ""
      redirect to "/residents/new"
    else
      @resident = Resident.create(
        :username => params["username"],
        :password => params["password"],
        :name => params["name"],
        :apartment_number => params["apartment_number"]
      )
      @resident.save
      session[:user_id] = @resident.id
      redirect to '/residents'
    end
  end

  # GET: /residents/5
  get "/residents/:id" do
    erb :"/residents/show.html"
  end

end
