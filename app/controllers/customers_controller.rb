class CustomersController < ApplicationController
  def index
    @customers = Customer.all.page(params[:page]).per(9)
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
