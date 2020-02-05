class ItemsController < ApplicationController
  # GET /products
  def index
    @items = Item.all

    render json: @items
  end
end
