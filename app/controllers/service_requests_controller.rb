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
      @service_request = ServiceRequest.find_by(params[:id])
      erb :"/service_requests/show"
    else
      redirect to "/login"
    end
  end

  #EDIT a service request
  get "/service_requests/:id/edit" do
    if logged_in?
      @service_request = ServiceRequest.find_by(params[:id])
      erb :"/service_requests/edit"
    else
      redirect to "/login"
    end
  end

  #PATCH an edit of a service request
  post "/service_requests/:id" do
    @service_request = ServiceRequest.find_by(params[:id])
    @service_request.message = params["message"]
    @service_request.save
    redirect to "/service_requests/#{@service_request.id}"
  end

  #DELETE an instance of a service request
  post "/service_requests/:id/delete" do
    @service_request = ServiceRequest.find_by(params[:id])
    if @service_request.resident_id == current_user.id
      @service_request.delete
    end
    redirect to "/residents/#{current_user.slug}"
  end

end
