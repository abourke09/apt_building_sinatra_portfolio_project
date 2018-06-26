class ServiceRequestsController < ApplicationController

  #New Service Request
  get "/service_requests/new" do
    if logged_in?
      erb :"/service_requests/new"
    else
      redirect to "/login"
    end
  end

  #POST New Service Request Form
  post "/service_requests" do
      @service_request = ServiceRequest.create(:message => params["message"])
      @service_request.resident_id = current_user.id
      @service_request.save
      redirect to "/service_requests/#{@service_request.id}"
  end

  #SHOW a given service request
  get "/service_requests/:id" do
    if logged_in?
      @service_request = ServiceRequest.find(params[:id])
      erb :"/service_requests/show"
    else
      redirect to "/login"
    end
  end

  #EDIT a service request
  get "/service_requests/:id/edit" do
    erb :"/service_requests/edit"
  end

  #PATCH an edit of a service request
  patch "/service_requests/:id" do
    redirect "/service_requests/:id"
  end

  #DELETE an instance of a service request
  delete "/service_requests/:id/delete" do
    redirect "/service_requests"
  end
end
