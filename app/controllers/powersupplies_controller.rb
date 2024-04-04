class PowersuppliesController < ApplicationController
  def index
    @powersupplies = Powersupply.all.page(params[:page]).per(9)
  end

  def show
    @powersupply = Powersupply.find(params[:id])
  end
end
