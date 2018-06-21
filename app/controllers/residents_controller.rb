class ResidentsController < ApplicationController

  # GET: /residents
  get "/residents" do
    erb :"/residents/index.html"
  end

  # GET: /residents/new
  get "/residents/new" do
    erb :"/residents/new.html"
  end

  # POST: /residents
  post "/residents" do
    redirect "/residents"
  end

  # GET: /residents/5
  get "/residents/:id" do
    erb :"/residents/show.html"
  end

  # GET: /residents/5/edit
  get "/residents/:id/edit" do
    erb :"/residents/edit.html"
  end

  # PATCH: /residents/5
  patch "/residents/:id" do
    redirect "/residents/:id"
  end

  # DELETE: /residents/5/delete
  delete "/residents/:id/delete" do
    redirect "/residents"
  end
end
