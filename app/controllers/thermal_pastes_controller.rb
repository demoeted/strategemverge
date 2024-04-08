class ThermalPastesController < ApplicationController
  def index
    @thermal_pastes = ThermalPaste.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @thermal_pastes = ThermalPaste.all.page(params[:page]).per(25)
      when 'new'
        @thermal_pastes = ThermalPaste.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @thermal_pastes = ThermalPaste.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @thermal_paste = ThermalPaste.find(params[:id])
    @categoryname = Category.where(id: @thermal_paste.category_id)
                        .select("name")
  end
end
