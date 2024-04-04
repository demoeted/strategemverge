class ThermalPastesController < ApplicationController
  def index
    @thermal_pastes = ThermalPaste.all.page(params[:page]).per(9)
  end

  def show
    @thermal_paste = ThermalPaste.find(params[:id])
  end
end
