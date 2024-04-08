class CpusController < ApplicationController
  def index
    @cpus = Cpu.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @cpus = Cpu.all.page(params[:page]).per(25)
      when 'new'
        @cpus = Cpu.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @cpus = Cpu.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @cpu = Cpu.find(params[:id])
    @categoryname = Category.where(id: @cpu.category_id)
                        .select("name")
  end
end
