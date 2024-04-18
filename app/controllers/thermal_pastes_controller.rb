class ThermalPastesController < ApplicationController
  def index
    @products = ThermalPaste.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = ThermalPaste.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = ThermalPaste.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = ThermalPaste.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Thermal Pastes'")
  end

  def show
    @product = ThermalPaste.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
