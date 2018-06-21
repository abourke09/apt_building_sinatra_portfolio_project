class ResidentsController < ApplicationController

  #Residents' homepage (show page for individual)
  get "/residents/:slug" do
    @resident = Resident.find_by_slug(:slug)
    if logged_in?
      erb :"/residents/show.html"
    else
      redirect to "/"
    end
  end

  #Signup page form
  get "/residents/new" do
    @resident = Resident.find_by_slug(:slug)
    if logged_in?
      redirect to "/residents/<%@resident.slug=%>"
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
      redirect to "/residents/<%@resident.slug=%>"
    end
  end

  #Login Page
    get '/login' do
      @resident = Resident.find_by_slug(:slug)
      if logged_in?
        redirect to "/residents/<%@resident.slug=%>"
      else
        erb :"/residents/login.html"
      end
    end

  #Login Page- Form Submit
    post '/login' do
      resident = Resident.find_by(username: params[:username])

      if resident && resident.authenticate(params[:password])
        session[:user_id] = resident.id
        redirect to "/residents/<%@resident.slug=%>"
      else
        redirect to "/login"
      end
    end

end
