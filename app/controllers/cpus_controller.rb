class CpusController < ApplicationController
  def index
    @cpus = Cpus.all.page(params[:page]).per(9)
  end

  def show
    @cpu = Cpus.find(params[:id])
  end
end
