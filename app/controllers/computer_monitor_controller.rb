class ComputerMonitorController < ApplicationController
  def index
    @computer_monitors = ComputerMonitor.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @computer_monitor = ComputerMonitor.find(params[:id])
    @categoryname = Category.where(id: @computer_monitor.category_id)
                        .select("name")
  end
end
