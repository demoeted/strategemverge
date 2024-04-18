class ComputerMonitorController < ApplicationController
  def index
    @products = ComputerMonitor.all.page(params[:page]).per(25)
    filter = params[:filter]
    @message = ""
    case filter
      when 'all'
        @products = ComputerMonitor.all.page(params[:page]).per(25)
        @message = ""
      when 'new'
        @products = ComputerMonitor.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
        @message = "Filtered: New"
      when 'recently updated'
        @products = ComputerMonitor.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
        @message = "Filtered: Recently Updated"
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Monitors'")
  end

  def show
    @product = ComputerMonitor.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
