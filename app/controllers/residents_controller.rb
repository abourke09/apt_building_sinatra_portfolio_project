require 'sinatra/base'
require 'rack-flash'

class ResidentsController < ApplicationController

  #Signup page form
  get "/residents/new" do
    if logged_in?
      @resident = current_user
      redirect to "/residents/#{@resident.slug}"
    else
      @buildings = Building.all
      erb :"/residents/signup"
    end
  end

  #Signup page- POST action
  post "/residents" do

    #need a way to view what the error was
    #if validation fails
      #flash[:message] = "Sorry, it looks like that usename is already taken, or you didn't fill in something."
      #redirect to "/residents/new"
    #end
    #binding.pry
      @resident = Resident.create(
        :username => params["username"],
        :password => params["password"],
        :name => params["name"],
        :apt_number => params["apartment_number"],
        :building_id => params["building"],
      )
      if @resident.errors
        flash[:message] = @resident.errors.messages
        @buildings = Building.all
        erb :"/residents/signup"
      else
        @resident.save
        session[:user_id] = @resident.id
        redirect to "/residents/#{@resident.slug}"
      end
  end

  #Login Page
    get '/login' do
      if logged_in?
        @resident = current_user
        redirect to "/residents/#{@resident.slug}"
      else
        erb :"/residents/login"
      end
    end

  #Login Page- POST action
    post '/login' do
      @resident = Resident.find_by(username: params[:username])
      if @resident && @resident.authenticate(params[:password])
        session[:user_id] = @resident.id
        redirect to "/residents/#{@resident.slug}"
      else
        redirect to "/login"
      end
    end


    #Residents' homepage, show page
    get "/residents/:slug" do
      @resident = Resident.find_by_slug(params[:slug])
      if current_user == @resident
        erb :"/residents/show"
      else
        redirect to "/"
      end
    end
end
