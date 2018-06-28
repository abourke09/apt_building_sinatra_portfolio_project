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
    @service_request = ServiceRequest.find_by(id: params[:id])

    if !@service_request
      redirect to "/"
    elsif current_user == @service_request.resident
      erb :"/service_requests/show"
    else
      redirect to "/"
    end
  end

  #EDIT a service request
  get "/service_requests/:id/edit" do
    @service_request = ServiceRequest.find_by(id: params[:id])
    if current_user == @service_request.resident
      erb :"/service_requests/edit"
    else
      redirect to "/"
    end
  end

  #PATCH an edit of a service request
  post "/service_requests/:id" do
    @service_request = ServiceRequest.find_by(id: params[:id])
    @service_request.message = params["message"]
    @service_request.save
    redirect to "/service_requests/#{@service_request.id}"
  end

  #DELETE an instance of a service request
  post "/service_requests/:id/delete" do
    @service_request = ServiceRequest.find_by(id: params[:id])
    if @service_request.resident_id == current_user.id
      @service_request.delete
    end
    redirect to "/residents/#{current_user.slug}"
  end

end
