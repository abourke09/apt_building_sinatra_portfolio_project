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
      redirect to "/service_request/#{@service_request.id}"
  end

  # GET: /service_requests/5
  get "/service_requests/:id" do
    erb :"/service_requests/show"
  end

  # GET: /service_requests/5/edit
  get "/service_requests/:id/edit" do
    erb :"/service_requests/edit"
  end

  # PATCH: /service_requests/5
  patch "/service_requests/:id" do
    redirect "/service_requests/:id"
  end

  # DELETE: /service_requests/5/delete
  delete "/service_requests/:id/delete" do
    redirect "/service_requests"
  end
end
