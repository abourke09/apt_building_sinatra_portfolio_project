class ResidentsController < ApplicationController

  # GET: /residents
  get "/residents" do
    erb :"/residents/index.html"
  end

  #Signup page form
  get "/residents/new" do
    erb :"/residents/new.html"
  end

  #Signup page- POST action
  post "/residents" do
    redirect "/residents"
  end

  # GET: /residents/5
  get "/residents/:id" do
    erb :"/residents/show.html"
  end

end
