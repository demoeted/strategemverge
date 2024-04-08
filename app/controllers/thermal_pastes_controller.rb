class ThermalPastesController < ApplicationController
  def index
    @thermal_pastes = ThermalPaste.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @thermal_paste = ThermalPaste.find(params[:id])
    @categoryname = Category.where(id: @thermal_paste.category_id)
                        .select("name")
  end
end
