class OrderproductsController < ApplicationController
  def index
    @orderproducts = Orderproduct.all.page(params[:page]).per(9)
  end

  def show
    @orderproduct = Orderproduct.find(params[:id])
  end
end
