class CpusController < ApplicationController
  def index
    @products = Cpu.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @products = Cpu.all.page(params[:page]).per(25)
      when 'new'
        @products = Cpu.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @products = Cpu.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'CPUs'")
  end

  def show
    @product = Cpu.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
