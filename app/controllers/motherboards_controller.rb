class MotherboardsController < ApplicationController
  def index
    @motherboards = Motherboard.all.page(params[:page]).per(9)
  end

  def show
    @motherboard = Motherboard.find(params[:id])
  end
end
