class MotherboardsController < ApplicationController
  def index
    @motherboards = Motherboard.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @motherboards = Motherboard.all.page(params[:page]).per(25)
      when 'new'
        @motherboards = Motherboard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @motherboards = Motherboard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
  end

  def show
    @motherboard = Motherboard.find(params[:id])
    @categoryname = Category.where(id: @motherboard.category_id)
                        .select("name")
  end
end
