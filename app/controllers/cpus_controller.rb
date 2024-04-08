class CpusController < ApplicationController
  def index
    @cpus = Cpu.all.page(params[:page]).per(25)
    @categories = Category.all
  end

  def show
    @cpu = Cpu.find(params[:id])
    @categoryname = Category.where(id: @cpu.category_id)
                        .select("name")
  end
end
