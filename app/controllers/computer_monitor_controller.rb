class ComputerMonitorController < ApplicationController
  def index
    @computer_monitors = ComputerMonitor.all.page(params[:page]).per(25)
  end

  def show
    @computer_monitor = ComputerMonitor.find(params[:id])
  end
end
