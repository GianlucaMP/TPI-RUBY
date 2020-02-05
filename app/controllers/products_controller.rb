class ProductsController < ApplicationController
  #before_action :authenticate_user, :set_product, only: [:show, :update, :destroy, :index, :por_codigo, :stock, :add_items]
  #before_action :authenticate_user, only: [:index, :por_codigo, :stock]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  #GET productos/:codigo
  def por_codigo
    @product = Product.find_by(codigo_unico: params[:codigo])

    render json: @product
  end

  #GET productos/:codigo/items
  def stock
    #@product = Product.find_by(codigo_unico: params[:codigo])
    @items = @product.items

    render json: @items
  end

  def add_items
    cant = params.require(:item)['cantidad']
    precio = params.require(:item)['precio']

    items = (1..cant).map { |e| @product.items.create(price: precio) }

    render json: items
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find_by(codigo_unico: params[:codigo])
    end

    def product_params
      #params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
