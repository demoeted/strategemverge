class OrdersController < ApplicationController
  def index
    @orders = Order.all.page(params[:page]).per(25)
  end

  def show
    @order = Order.find(params[:id])
  end
end
