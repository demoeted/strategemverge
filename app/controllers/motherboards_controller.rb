class MotherboardsController < ApplicationController
  def index
    @products = Motherboard.all.page(params[:page]).per(25)
    filter = params[:filter]
    case filter
      when 'all'
        @products = Motherboard.all.page(params[:page]).per(25)
      when 'new'
        @products = Motherboard.where('created_at >= ?', 3.days.ago).page(params[:page]).per(25)
      when 'recently updated'
        @products = Motherboard.where('updated_at >= ?', 3.days.ago)
                                        .where.not('created_at >= ?', 3.days.ago)
                                        .page(params[:page]).per(25)
    end
    @categories = Category.all
    @categoryname = Category.where("name = 'Motherboards'")
  end

  def show
    @product = Motherboard.find(params[:id])
    @categoryname = Category.where(id: @product.category_id)
                        .select("name")
  end
end
