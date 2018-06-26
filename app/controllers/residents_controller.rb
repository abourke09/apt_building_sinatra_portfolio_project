class ResidentsController < ApplicationController

  #Signup page form
  get "/residents/new" do
    if logged_in?
      @resident = current_user
      redirect to "/residents/#{@resident.slug}"
    else
      erb :"/residents/signup"
    end
  end

  #Signup page- POST action
  post "/residents" do
    if params[:username] == "" || params[:password] == "" || params[:name] == "" || params[:building] == "" || params[:apartment_number] == ""
      redirect to "/residents/new"
    else
      @resident = Resident.create(
        :username => params["username"],
        :password => params["password"],
        :name => params["name"],
        :apt_number => params["apartment_number"],
        :building_id => params["building"],
      )
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

      if resident && resident.authenticate(params[:password])
        session[:user_id] = resident.id
        redirect to "/residents/#{@resident.slug}"
      else
        redirect to "/login"
      end
    end


    #Residents' homepage, show page
    get "/residents/:slug" do
      @resident = Resident.find_by_slug(params[:slug])
      if logged_in?
        erb :"/residents/show"
      else
        redirect to "/"
      end
    end
end
