class MotherboardsController < ApplicationController
  def index
    @motherboards = Motherboard.all.page(params[:page]).per(25)
  end

  def show
    @motherboard = Motherboard.find(params[:id])
  end
end
