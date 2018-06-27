require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get "/" do
    erb :welcome
  end

  get "/logout" do
      if logged_in?
        session.clear
        redirect "/login"
      else
        redirect "/"
      end
    end

    helpers do
      def logged_in?
        !!current_user
      end

      def current_user
        Resident.find_by(id: session[:user_id])
      end
    end

end
