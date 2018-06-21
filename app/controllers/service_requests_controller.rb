class ServiceRequestsController < ApplicationController

  # GET: /service_requests
  get "/service_requests" do
    erb :"/service_requests/index"
  end

  # GET: /service_requests/new
  get "/service_requests/new" do
    erb :"/service_requests/new"
  end

  # POST: /service_requests
  post "/service_requests" do
    redirect "/service_requests"
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
