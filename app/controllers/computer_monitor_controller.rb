class ComputerMonitorController < ApplicationController
  def index
    @computer_monitors = ComputerMonitor.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @computer_monitors = ComputerMonitor.all.page(params[:page]).per(25)
      when 'new'
        @computer_monitors = ComputerMonitor.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @computer_monitors = ComputerMonitor.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @computer_monitor = ComputerMonitor.find(params[:id])
    @categoryname = Category.where(id: @computer_monitor.category_id)
                        .select("name")
  end
end
