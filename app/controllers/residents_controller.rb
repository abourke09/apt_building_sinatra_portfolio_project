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
      @resident = Resident.create(params)

      if !@resident.errors.messages.empty?
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
      if params[:username].empty? || params[:password].empty?
        flash[:message] = "Please be sure to fill out both the username and the password."
        erb :"/residents/login"
      elsif @resident && @resident.authenticate(params[:password])
        session[:user_id] = @resident.id
        redirect to "/residents/#{@resident.slug}"
      else
        flash[:message] = "Incorrect password, please try again."
        erb :"/residents/login"
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
