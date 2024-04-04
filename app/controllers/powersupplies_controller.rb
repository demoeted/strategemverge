class PowersuppliesController < ApplicationController
  def index
    @powersupplies = Powersupply.all.page(params[:page]).per(25)
  end

  def show
    @powersupply = Powersupply.find(params[:id])
  end
end
