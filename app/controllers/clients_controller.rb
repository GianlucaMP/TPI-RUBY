class ClientsController < ApplicationController
  before_action :authenticate_user, only: [:index]

  # GET /clientes
  def index
    @clients = Client.all

    render json:@clients
  end
end
